# This is the model that handles the conversation logic
# for the assistant, it should be in charge of creating,
# maintaining or ending the conversation loop with the user
# and pass the user input to the assistant for them to process

require_relative 'user'
require_relative '../assistant'

class Conversation
  def initialize(settings)
    @settings = settings
    @bot_name = settings['bot_name']
    @user_name = settings['user_name']
  end

  def self.start(settings)
    self.new(settings).start_loop
  end

  def assistant
    @assistant ||= Assistant.new(bot_name)
  end

  def user
    @user ||= User.new(user_name)
  end

  def start_loop
    first_msg = "Hey there"

    assistant.say(first_msg)

    input = user.get_input

    while conversation_still_going?(input)
      conversation_loop(input)
      input = user.get_input
    end

    assistant.say_bye
    return
  end

  def conversation_loop(input)
    assistant.process_input(input)
    assistant.say("Need anything else?")
  end

  private

  def conversation_still_going?(input)
    !exit_directives.include?(input)
  end

  def exit_directives
    @exit_directives ||= settings.dig('conversation', 'exit_directives')
  end

  attr_reader :bot_name, :user_name, :settings
end
