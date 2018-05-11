#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

class Paggio

module Utils
  def self.heredoc(string)
    indent = string.scan(/^[ \t]*(?=\S)/).min.size rescue 0

    string.gsub(/^[ \t]{#{indent}}/, '')
  end

  def self.deep_merge(a, b)
    merger = proc {|key, v1, v2|
      if Hash === v1 && Hash === v2
        v1.merge(v2, &merger)
      else
        v2
      end
    }

    a.merge(b, &merger)
  end

  def self.deep_merge!(a, b)
    merger = proc {|key, v1, v2|
      if Hash === v1 && Hash === v2
        v1.merge!(v2, &merger)
        v1
      else
        v2
      end
    }

    a.merge!(b, &merger)
  end
end

end
