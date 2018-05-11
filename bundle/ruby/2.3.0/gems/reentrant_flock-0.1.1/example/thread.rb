require 'reentrant_flock'

def with_rlock(&block)
  File.open('/tmp/lock', File::RDWR | File::CREAT) do |fp|
    ReentrantFlock.synchronize(fp, File::LOCK_EX | File::LOCK_NB, &block)
  end
end

# Should raise AlreadyLocked
th = Thread.new do
  with_rlock do
    sleep 0.5
  end
end
sleep 0.1
with_rlock do
  sleep 0.5
end
th.join
