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

class Input < self
  { type:         :type,
    name:         :name,
    value:        :value,
    size:         :size,
    place_holder: :placeholder,
    read_only:    :readonly,
    required:     :required,
    limit:        :maxlength
  }.each {|name, attribute|
    defhelper name do |value|
      @attributes[name] = value
    end
  }
end

end; end; end
