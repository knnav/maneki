# This class represents the user that interacts
# with the assistant

require_relative 'name_tag'
require_relative 'input'

class User
  def initialize(name)
    @name = name
  end

  def get_input
    NameTag.show(name)
    Input.get
  end

  private

  attr_reader :name
end