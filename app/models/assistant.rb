# This is the main class that the assistant will operate on
# think of it as the assistant's "Fat model"

require_relative "conversation/answer"
require_relative "../../config/dialogs"
require_relative "utils/banners"
require_relative "utils/macros"

class Assistant
  include Utils::Macros

  def initialize(name)
    @name = name
  end

  def say(message)
    Answer.show(name, message)
  end

  def show_banner
    puts Utils::Banners.available_banners.sample
  end

  def process_input(input)
    if input_is_macro?(input)
      say(parse_macro(input))
    end
  end

  def say_bye
    say(Dialogs.dialogs['byes'].sample)
  end

  private

  attr_reader :name
end