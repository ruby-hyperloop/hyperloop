#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

require 'paggio/utils'
require 'paggio/html'
require 'paggio/css'
require 'paggio/formatter'

class Paggio
  def self.options(options, &block)
    Formatter.options(options, &block)
  end

  def self.indent(options, &block)
    options(indent: options, &block)
  end

  def self.css(*args, &block)
    Formatter.new.format(CSS.new(*args, &block)).to_s
  end

  def self.html(*args, &block)
    Formatter.new.format(HTML.new(*args, &block)).to_s
  end

  def self.html!(&block)
    Formatter.new.tap {|f|
      HTML.new(&block).each {|root|
        f.format root
      }
    }.to_s
  end
end
