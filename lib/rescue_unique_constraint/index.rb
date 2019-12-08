module RescueUniqueConstraint
  class Index
    attr_reader :name, :field, :scope
    def initialize(name, field, scope)
      @name = name
      @field = field
      @scope = scope
    end
  end
end
