#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

class Paggio; class CSS < BasicObject

class Color
  def initialize(value, type)
    @internal = value
    @type     = type
  end
end

end; end

class String
  %w[rgb rgba hsl hsla].map(&:to_sym).each {|name|
    define_method name do
      Paggio::CSS::Color.new(self, name)
    end
  }
end

class Array
  %w[rgb rgba hsl hsla].map(&:to_sym).each {|name|
    define_method name do
      Paggio::CSS::Color.new(self, name)
    end
  }
end
