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

class Optgroup < self
  %w[label value].each {|name|
    defhelper name do |value|
      @attributes[name] = value
    end
  }

  defhelper! :disabled
  defhelper! :selected
end

end; end; end
