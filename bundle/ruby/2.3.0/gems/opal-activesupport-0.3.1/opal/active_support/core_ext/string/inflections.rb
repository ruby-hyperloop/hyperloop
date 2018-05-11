require 'active_support/inflector'

class String
  def pluralize
    ActiveSupport::Inflector.pluralize(self)
  end

  def singularize
    ActiveSupport::Inflector.singularize(self)
  end

  def constantize
    ActiveSupport::Inflector.constantize(self)
  end
end
