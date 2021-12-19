# This is a dumb class that just aims to give a
# cool format to the chat screen
 
class NameTag
  def initialize(name)
    @name = name
  end

  def self.show(name)
    print self.new(name).formatted_name
  end

  def formatted_name
    "[#{name}]: "
  end

  attr_reader :name
end