require 'faraday'
require 'json'

module HackerNews
  class FetchStory
    def initialize(story_id)
      @story_id = story_id
    end

    def self.execute(story_id)
      self.new(story_id).fetch
    end

    def fetch
      response = Faraday.get(endpoint)
      return JSON.parse(response.body)
    rescue => e
      return {}
    end

    def endpoint
      "https://hacker-news.firebaseio.com/v0/item/#{story_id}.json"
    end

    attr_reader :story_id
  end
end