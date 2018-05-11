class Paggio; class HTML < BasicObject; class Element < BasicObject

class Link < self
  { cross_origin: :crossorigin,

    href:      :href,
    href_lang: :hreflang,

    media: :media,
    rel:   :rel,
    sizes: :sizes,
    type:  :type,
  }.each {|name, attribute|
    defhelper name do |value|
      @attributes[name] = value.to_s
    end
  }
end

end; end; end
