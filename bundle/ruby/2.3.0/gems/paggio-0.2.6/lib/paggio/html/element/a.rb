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

class A < self
  { href: :href,
    url:  :href,

    rel:      :rel,
    relative: :rel,

    target: :target,

    type: :type,

    lang:     :hreflang,
    language: :hreflang,

    media: :media,
  }.each {|name, attribute|
    defhelper name do |value|
      @attributes[name] = value.to_s
    end
  }

  defhelper! :download
  defhelper! :ping

  defhelper :text do |string|
    self << string
  end
end

end; end; end
