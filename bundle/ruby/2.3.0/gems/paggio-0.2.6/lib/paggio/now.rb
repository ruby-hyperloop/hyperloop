#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

require 'paggio'

def html(*args, &block)
  puts Paggio.html(*args, &block)
end

def html!(&block)
  puts Paggio.html!(&block)
end

def css(*args, &block)
  puts Paggio.css(*args, &block)
end
