#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

require 'paggio/html/element/a'
require 'paggio/html/element/base'
require 'paggio/html/element/blockquote'
require 'paggio/html/element/button'
require 'paggio/html/element/canvas'
require 'paggio/html/element/embed'
require 'paggio/html/element/img'
require 'paggio/html/element/input'
require 'paggio/html/element/link'
require 'paggio/html/element/object'
require 'paggio/html/element/option'
require 'paggio/html/element/optgroup'
require 'paggio/html/element/select'
require 'paggio/html/element/td'

class Paggio; class HTML < BasicObject

class Element < BasicObject
  def self.new(owner, name, attributes = {})
    return super unless self == Element

    const = name.capitalize

    if const_defined?(const)
      const_get(const).new(owner, name, attributes)
    else
      super
    end
  end

  def initialize(owner, name, attributes = {})
    @owner       = owner
    @name        = name
    @attributes  = attributes
    @children    = []
    @class_names = []
  end

  def each(&block)
    @children.each(&block)
  end

  def <<(what)
    @children << what

    self
  end

  def method_missing(name, content = nil, &block)
    if name.to_s.end_with? ?!
      @attributes[:id] = name[0 .. -2]
    else
      @class_names << name
    end

    if ::Hash === content
      if content.has_key?(:class) || content.has_key?(:classes)
        @class_names.unshift(*(content.delete(:class).to_s.split | content.delete(:classes).to_a))
      end

      ::Paggio::Utils.deep_merge!(@attributes, content)
    elsif content
      self >> content
    end

    @owner.extend!(self, &block) if block

    self
  end

  def [](*names)
    if last = @class_names.pop
      @class_names << [last, *names].join('-')
    end

    self
  end

  def do(&block)
    @owner.extend!(self, &block)

    self
  end

  def >>(content)
    self << ::Paggio::Utils.heredoc(content.to_s)
    self
  end

  defhelper :style do |hash|
    @attributes[:style] = hash.map {|name, value|
      "#{name}: #{value}"
    }.join(';')
  end

  defhelper :data do |hash|
    hash.each {|name, value|
      @attributes["data-#{name}"] = value.to_s
    }
  end

  def inspect
    if @children.empty?
      "#<HTML::Element(#{@name.upcase})>"
    else
      "#<HTML::Element(#{@name.upcase}): #{@children.inspect[1 .. -2]}>"
    end
  end
end

end; end
