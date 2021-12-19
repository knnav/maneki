class NameTag
  def initialize(name)
    @name = name
  end

  def formatted_name
    "[#{name}]:"
  end

  attr_reader :name
end