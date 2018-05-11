#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

class Paggio; class HTML < BasicObject; class Element < BasicObject

class Base < self
  { href: :href,
    url:  :href,

    target: :target,
  }.each {|name, attribute|
    defhelper name do |value|
      @attributes[name] = value.to_s
    end
  }
end

end; end; end
