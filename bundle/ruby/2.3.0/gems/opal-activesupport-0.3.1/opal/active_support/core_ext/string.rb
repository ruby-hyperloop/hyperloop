require 'active_support/core_ext/string/inflections'

class String
  def parameterize
    self.downcase.strip.gsub(/\W+/, '-')
  end

  def dasherize
    result = `#{self}.replace(/[-_\s]+/g, '-')
            .replace(/([A-Z\d]+)([A-Z][a-z])/g, '$1-$2')
            .replace(/([a-z\d])([A-Z])/g, '$1-$2')
            .toLowerCase()`
    result
  end

  def demodulize
    %x{
      var idx = #{self}.lastIndexOf('::');

      if (idx > -1) {
        return #{self}.substr(idx + 2);
      }

      return #{self};
    }
  end

  def underscore
    result = `#{self}.replace(/[-\s]+/g, '_')
            .replace(/([A-Z\d]+)([A-Z][a-z])/g, '$1_$2')
            .replace(/([a-z\d])([A-Z])/g, '$1_$2')
            .replace(/-/g, '_')
            .toLowerCase()`
    result
  end

  def camelize(first_letter = :upper)
    result = `#{underscore}.replace(/(^|_)([^_]+)/g, function(match, pre, word, index) {
      var capitalize = #{first_letter} === #{:upper} || index > 0;
      return capitalize ? word.substr(0,1).toUpperCase()+word.substr(1) : word;
    })`
    result
  end
  alias_method :camelcase, :camelize
end
