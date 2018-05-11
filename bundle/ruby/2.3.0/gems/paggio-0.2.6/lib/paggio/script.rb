#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

require 'opal'
require 'sourcify'

class Paggio

class Script
  def initialize(options = {}, &block)
    @options = options
    @block   = block
  end

  def build
    Opal.compile(@block.to_source['proc { '.length .. -' }'.length],
      @options)
  end
end

class HTML < BasicObject
  def script(*args, &block)
    if block
      (@current || @roots) << Script.new(*args, &block)
    else
      super
    end
  end

  def local_variables(*)
    []
  end
end

Formatter.for Script do |f, item|
  f.print '<script><![CDATA['
  f.indent {
    f.print item.build
  }
  f.print ']]></script>'
end

end
