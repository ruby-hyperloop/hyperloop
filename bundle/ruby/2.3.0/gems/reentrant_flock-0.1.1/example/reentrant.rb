require 'reentrant_flock'

def with_rlock(&block)
  File.open('/tmp/lock', File::RDWR | File::CREAT) do |fp|
    ReentrantFlock.synchronize(fp, File::LOCK_EX, &block)
  end
end

with_rlock do
  with_rlock do
    puts 'Not blocked by myself'
  end
end
