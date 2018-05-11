require 'json'

class Object
  def as_json
    nil
  end
end

class Boolean
  def as_json
    self
  end
end

class NilClass
  def as_json
    self
  end
end

class Numeric
  def as_json
    self
  end
end

class String
  def as_json
    self
  end
end

class Array
  def as_json(options = nil) #:nodoc:
    map { |v| options ? v.as_json(options.dup) : v.as_json }
  end
end
