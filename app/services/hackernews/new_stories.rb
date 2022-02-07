require 'faraday'
require 'json'

module HackerNews
  class NewStories
    def self.execute
      self.new.fetch
    end

    def fetch
      response = Faraday.get(endpoint)
      return JSON.parse(response.body)[0..10]
    rescue => e
      return {}
    end

    def endpoint
      'https://hacker-news.firebaseio.com/v0/newstories.json'
    end
  end
end