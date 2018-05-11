module ActiveSupport
  class HashWithIndifferentAccess < Hash
    # Returns +true+ so that <tt>Array#extract_options!</tt> finds members of
    # this class.
    def extractable_options?
      true
    end

    def with_indifferent_access
      dup
    end

    def nested_under_indifferent_access
      self
    end

    def initialize(constructor = {})
      if constructor.respond_to?(:to_hash)
        super()
        update(constructor)
      else
        super(constructor)
      end
    end

    def self.new_from_hash_copying_default(hash)
      hash = hash.to_hash
      new(hash).tap do |new_hash|
        new_hash.default = hash.default
        new_hash.default_proc = hash.default_proc if hash.default_proc
      end
    end
  end
end
