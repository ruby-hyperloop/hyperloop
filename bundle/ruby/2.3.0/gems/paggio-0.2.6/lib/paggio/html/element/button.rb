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

class Button < self
  { form:  :form,
    name:  :name,
    type:  :type,
    value: :value,

    action:   :formaction,
    encoding: :formenctype,
    method:   :formmethod,
    target:   :formtarget,
  }.each {|name, attributes|
    defhelper name do |value|
      @attributes[name] = value.to_s
    end
  }

  defhelper! :autofocus
  defhelper! :disabled
end

end; end; end
