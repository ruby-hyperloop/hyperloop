#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

class Paggio; class HTML < BasicObject

class Element < BasicObject
  def self.defhelper(name, &block)
    define_method name do |*args, &body|
      instance_exec(*args, &block)

      self.do(&body) if body
      self
    end
  end

  def self.defhelper!(name, attribute = name)
    defhelper "#{name}!" do
      @attributes[attribute] = true
    end
  end
end

end; end
