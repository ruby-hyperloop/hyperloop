#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

require 'paggio/css/unit'
require 'paggio/css/color'
require 'paggio/css/definition'
require 'paggio/css/rule'
require 'paggio/css/font'
require 'paggio/css/animation'

class Paggio

class CSS < BasicObject
  def self.selector(list)
    result = ''

    list.each {|part|
      if part.start_with?('&')
        result += part[1 .. -1]
      else
        result += " " + part
      end
    }

    if result[0] == " "
      result[1 .. -1]
    else
      result
    end
  end

  attr_reader :rules, :media, :fonts, :animations

  def initialize(&block)
    ::Kernel.raise ::ArgumentError, 'no block given' unless block

    @selector   = []
    @current    = []
    @rules      = []
    @fonts      = []
    @animations = []

    if block.arity == 0
      instance_exec(&block)
    else
      block.call(self)
    end
  end

  def rule(*names, &block)
    return unless block

    if names.any? { |n| n.include? ',' }
      ::Kernel.raise ::ArgumentError, 'selectors cannot contain commas'
    end

    names.each {|name|
      @selector << name
      @current  << Rule.new(CSS.selector(@selector), @media)

      block.call

      @selector.pop
      @rules << @current.pop
    }
  end

  def media(query, *args, &block)
    if block
      old, @media = @media, query
      block.call
      @media = old
    else
      method_missing(:media, query, *args)
    end
  end

  def font(name, *args, &block)
    if block
      @current << Font.new(name)
      block.call
      @fonts << @current.pop
    else
      method_missing(:font, name, *args)
    end
  end

  def animation(name, *args, &block)
    if block
      @current << Animation.new(name)
      block.call
      @animations << @current.pop
    else
      method_missing(:animation, name, *args)
    end
  end

  # this is needed because the methods inside the rule blocks are actually
  # called on the CSS object
  def method_missing(*args, &block)
    @current.last.__send__(*args, &block)
  end
end

class HTML < BasicObject
  def style(&block)
    (@current || @roots) << CSS.new(&block)
  end
end

end
