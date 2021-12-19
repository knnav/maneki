# This class represents the responses that the assistant
# will return to the user

require_relative 'name_tag'

class Answer
  def initialize(name, message)
    @name = name
    @message = message
  end

  def self.show(name, message)
    self.new(name, message).print
  end

  def print
    puts "#{formatted_name}#{message}"
  end

  def formatted_name
    @formatted_name ||= NameTag.show(name)
  end

  private

  attr_reader :message, :name
end