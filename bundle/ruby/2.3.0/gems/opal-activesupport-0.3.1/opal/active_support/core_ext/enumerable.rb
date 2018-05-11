module Enumerable
  def index_by(&block)
    return enum_for :index_by unless block_given?

    hash = Hash.new

    %x{
      var result;

      self.$each._p = function() {
        var param = #{Opal.destructure(`arguments`)},
            value = $opal.$yield1(block, param);

        if (value === $breaker) {
          result = $breaker.$v;
          return $breaker;
        }

        #{hash[`value`] = `param`};
      }

      self.$each();

      if (result !== undefined) {
        return result;
      }
    }

    hash
  end

end
