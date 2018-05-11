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

class Td < self
  defhelper :columns do |value|
    @attributes[:colspan] = value.to_s
  end

  defhelper :rows do |value|
    @attributes[:rowspan] = value.to_s
  end

  defhelper :headers do |*args|
    @attributes[:headers] = args.join(' ')
  end
end

end; end; end
