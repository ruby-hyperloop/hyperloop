require "reentrant_flock/version"

class ReentrantFlock
  class AlreadyLocked < StandardError; end
end

class ReentrantFlock
  class << self
    # Note that File#flock is automatically unlocked when a file is closed,
    # but ReentrantFlock.flock cannot automatically reset internal counts
    # when a file is closed. Use ReentrantFlock.synchronize to assure
    # decrementing internal counts.
    #
    # @param [File] fp
    # @param [PARAM] operation See File#flock
    # @return see File#flock
    def flock(fp, operation)
      if (operation & File::LOCK_UN) > 0
        unlock(fp)
      else
        lock(fp, operation)
      end
    end

    # @param fp [File]
    # @param [PARAM] operation See File#flock
    # @yield
    # @raise [AlreadyLocked] if already locked and LOCK_NB operation is specified
    # @return [Object] the result of block
    def synchronize(fp, operation)
      raise 'Must be called with a block' unless block_given?

      begin
        raise AlreadyLocked if lock(fp, operation) == false
        yield
      ensure
        unlock(fp)
      end
    end

    # @param fp [File]
    # @return [Boolean] true if locked by self
    def self_locked?(fp)
      k = key(fp)
      Thread.current.key?(k) and Thread.current[k] >= 1
    end

    private

    # @return [0] if current thread holds the lock
    # @return [false] if another already locked (LOCK_NB)
    def lock(fp, operation)
      c = incr(key(fp))
      if c <= 1
        # flock returns 0 if successfully locked.
        # LOCK_NB returns false if somebody else already locked
        fp.flock(operation)
      else
        0
      end
    end

    def unlock(fp)
      k = key(fp)
      c = decr(k)
      if c <= 0
        fp.flock(File::LOCK_UN)
        del(k)
      end
    end

    def key(fp)
      "reentrant_flock_#{fp.path}"
    end

    def incr(key)
      Thread.current[key] ||= 0
      Thread.current[key] += 1
    end

    def decr(key)
      Thread.current[key] ||= 0
      Thread.current[key] -= 1
    end

    def del(key)
      Thread.current[key] = nil
    end
  end
end

# Please note that:
#
# ```
# fp = File.open('a', 'w')
# fp.flock(File::LOCK_EX)
# fp.flock(File::LOCK_EX) # does not block
# fp = File.open('a', 'w')
# fp.flock(File::LOCK_EX) # block
# ```
#
# That is, File#flock is orginally reentrant for the same file
# object. On linux, file lock is associated with file descriptor,
# so another file descriptor is required to get blocked.
# This version holds the same file object, so might be useless.
# I may delete this. Using flock directly should be enough.
class ReentrantFlock
  attr_reader :fp

  def initialize(fp)
    @fp = fp
    @mutex = Mutex.new
    @counts = Hash.new(0)
  end

  # @param [PARAM] operation See File#flock
  # @return see File#flock
  def flock(operation)
    if (operation & File::LOCK_UN) > 0
      unlock
    else
      lock(operation)
    end
  end

  # @param [PARAM] operation See File#flock
  # @yield
  # @raise [AlreadyLocked] if already locked and LOCK_NB operation is specified
  # @return [Object] the result of block
  def synchronize(operation)
    raise 'Must be called with a block' unless block_given?

    begin
      raise AlreadyLocked if lock(operation) == false
      yield
    ensure
      unlock
    end
  end

  # @return [Boolean] true if locked by self
  def self_locked?
    @mutex.synchronize { @counts[Thread.current] >= 1 }
  end

  private

  def lock(operation)
    c = incr
    if c <= 1
      # flock returns 0 if successfully locked.
      # LOCK_NB returns false if somebody else already locked
      fp.flock(operation)
    else
      0
    end
  end

  def unlock
    c = decr
    if c <= 0
      fp.flock(File::LOCK_UN)
      del
    end
  end

  def incr
    @mutex.synchronize { @counts[Thread.current] += 1 }
  end

  def decr
    @mutex.synchronize { @counts[Thread.current] -= 1 }
  end

  def del
    @mutex.synchronize { @counts.delete(Thread.current) }
  end
end
