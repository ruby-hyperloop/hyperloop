#--
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
#++

class Paggio; class CSS < BasicObject

class Animation < BasicObject
  class Step < BasicObject
    attr_reader :value

    def initialize(value)
      @value      = value
      @definition = Definition.new
    end

    def method_missing(*args, &block)
      @definition.__send__(*args, &block)
    end
  end

  attr_reader :name, :steps

  def initialize(name)
    @name  = name
    @steps = []
  end

  def step(value, &block)
    @steps << Step.new(value)
    block.call
  end

  def from(value, &block)
    @steps << Step.new(0.%)
    block.call
  end

  def to(value, &block)
    @steps << Step.new(100.%)
    block.call
  end

  def method_missing(*args, &block)
    @steps.last.__send__(*args, &block)
  end
end

end; end
