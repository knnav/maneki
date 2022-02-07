require_relative '../hackernews/new_stories'
require_relative "../hackernews/fetch_story"
require_relative 'answer_utils'

module Answers
  class HNStories
    include AnswerUtils

    def self.execute
      self.new.response
    end

    def response
      "#{Dialogs.dialogs.dig('hackernews', 'latest')}\n#{prettyfied_answer(prettyfied_stories)}"
    end

    def new_story_ids
      HackerNews::NewStories.execute
    end

    def prettyfied_stories
      raw_stories.each_with_object("") do |item, memo|
        memo << "#{item['title']} - #{item['url']}\n"
      end
    end

    def raw_stories
      new_story_ids.map { |story_id| HackerNews::FetchStory.execute(story_id) }
    end
  end
end