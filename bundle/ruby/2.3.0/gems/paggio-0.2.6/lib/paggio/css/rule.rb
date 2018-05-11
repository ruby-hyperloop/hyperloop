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

class Rule < BasicObject
  attr_reader :selector, :media

  def initialize(selector, media)
    @selector   = selector
    @media      = media
    @definition = Definition.new
  end

  def method_missing(*args, &block)
    @definition.__send__(*args, &block)
  end
end

end; end
