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

class Img < self
  { src: :src,
    url: :src,

    alt:         :alt,
    description: :alt,

    height: :height,
    width:  :width,

    map: :usemap,
  }.each {|name, attribute|
    defhelper name do |value|
      @attributes[name] = value.to_s
    end
  }

  defhelper :map! do
    @attributes[:ismap] = true
  end
end

end; end; end
