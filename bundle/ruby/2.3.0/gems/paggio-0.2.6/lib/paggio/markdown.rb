#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

require 'kramdown'

class Paggio

class HTML < BasicObject
  def markdown(string)
    (@current || @roots) << ::Kramdown::Document.new(
      ::Paggio::Utils.heredoc(string))
  end
end

Formatter.for Kramdown::Document do |f, item|
  f.print item.to_html
end

end
