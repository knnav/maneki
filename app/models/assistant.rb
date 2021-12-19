# This is the main class that the assistant will operate on
# think of it as the assistant's "Fat model"

require_relative "conversation/answer"
require_relative "../services/duckduckgo/instant_answers"
require_relative "../../config/dialogs"

class Assistant
  def initialize(name)
    @name = name
  end

  def say(message)
    Answer.show(name, message)
  end

  def process_input(input)
    say("#{Dialogs.dialogs['ddg_search']}#{input}\n#{prettyfied_answer(duckduckgo_search(input))}") 
  end

  def duckduckgo_search(query)
    DuckDuckGo::InstantAnswers.execute(query)
  end

  def prettyfied_answer(answer)
    "o==============================o\n\"#{answer}\"\no==============================o"
  end

  def say_bye
    say(Dialogs.dialogs['byes'].sample)
  end

  private

  attr_reader :name
end