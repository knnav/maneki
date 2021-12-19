require_relative '../duckduckgo/instant_answers'
require_relative 'answer_utils'
require_relative "../../../config/dialogs"

module Answers
  class DDGInstantAnswers
    include AnswerUtils

    def initialize(query)
      @query = query
    end

    def self.execute(query)
      self.new(query).result
    end

    def result
      "#{Dialogs.dialogs['ddg_search']}#{query}\n#{prettyfied_answer(duckduckgo_search(query))}"
    end

    def duckduckgo_search(query)
      DuckDuckGo::InstantAnswers.execute(query)
    end

    private

    attr_reader :query
  end
end