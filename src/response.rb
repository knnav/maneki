require_relative 'name_tag'

class Response
  def initialize(name, message)
    @name = name
    @message = message
  end

  def print
    puts "#{formatted_name} #{message}"
  end

  def formatted_name
    @formatted_name ||= NameTag.new(name).formatted_name
  end

  private

  attr_reader :message, :name
end