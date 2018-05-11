require 'set'

module ActiveSupport
  module Inflector
    extend self

    def inflections(lang = :en)
      if block_given?
        yield Inflections.instance
      else
        Inflections.instance
      end
    end

    def constantize(camel_cased_word)
      names = camel_cased_word.split('::')

      # Trigger a built-in NameError exception including the ill-formed constant in the message.
      Object.const_get(camel_cased_word) if names.empty?

      # Remove the first blank element in case of '::ClassName' notation.
      names.shift if names.size > 1 && names.first.empty?

      names.inject(Object) do |constant, name|
        if constant == Object
          constant.const_get(name)
        else
          candidate = constant.const_get(name)
          next candidate if constant.const_defined?(name, false)
          next candidate unless Object.const_defined?(name)

          # Go down the ancestors to check if it is owned directly. The check
          # stops when we reach Object or the end of ancestors tree.
          constant = constant.ancestors.inject do |const, ancestor|
            break const    if ancestor == Object
            break ancestor if ancestor.const_defined?(name, false)
            const
          end

          # owner is in Object, so raise
          constant.const_get(name, false)
        end
      end
    end

    def pluralize(word)
      apply_inflections(word, inflections.plurals)
    end

    def singularize(word)
      apply_inflections(word, inflections.singulars)
    end

    def apply_inflections(word, rules)
      result = word.to_s

      if inflections.uncountables.include?(result.downcase)
        result
      else
        rules.detect do |rule, replacement|
          break result.sub(rule, replacement) if result.index(rule)
        end
      end
    end

    class Inflections
      def self.instance
        @__instance__ ||= new
      end

      attr_reader :plurals, :singulars, :uncountables

      def initialize
        @plurals, @singulars, @uncountables = [], [], Set.new
      end

      def plural(rule, replacement)
        @plurals.unshift([rule, replacement])
      end

      def singular(rule, replacement)
        @singulars.unshift([rule, replacement])
      end

      def uncountable(words)
        words.each { |w| @uncountables << w.downcase }
      end

      def irregular(singular, plural)
        @uncountables.delete(singular)
        @uncountables.delete(plural)

        s0 = singular[0]
        srest = singular[1..-1]

        p0 = plural[0]
        prest = plural[1..-1]

        if s0.upcase == p0.upcase
          plural(/(#{s0})#{srest}$/i, '\1' + prest)
          plural(/(#{p0})#{prest}$/i, '\1' + prest)

          singular(/(#{s0})#{srest}$/i, '\1' + srest)
          singular(/(#{p0})#{prest}$/i, '\1' + srest)
        else
          plural(/#{s0.upcase}(?i)#{srest}$/,   p0.upcase   + prest)
          plural(/#{s0.downcase}(?i)#{srest}$/, p0.downcase + prest)
          plural(/#{p0.upcase}(?i)#{prest}$/,   p0.upcase   + prest)
          plural(/#{p0.downcase}(?i)#{prest}$/, p0.downcase + prest)

          singular(/#{s0.upcase}(?i)#{srest}$/,   s0.upcase   + srest)
          singular(/#{s0.downcase}(?i)#{srest}$/, s0.downcase + srest)
          singular(/#{p0.upcase}(?i)#{prest}$/,   s0.upcase   + srest)
          singular(/#{p0.downcase}(?i)#{prest}$/, s0.downcase + srest)
        end
      end
    end
  end
end
