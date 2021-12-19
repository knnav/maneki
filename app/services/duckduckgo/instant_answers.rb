require 'faraday'
require 'json'

module DuckDuckGo
  class InstantAnswers
    def initialize(query)
      @query = query
    end

    def self.execute(query)
      self.new(query).fetch
    end

    def fetch
      response = Faraday.get(target_url)
      return JSON.parse(response.body)["AbstractText"] unless response.body.nil?
      raise if JSON.parse(response.body)["AbstractText"].nil?
    rescue => e
      "No puedo encontrar resultados para \"#{query}\", lo siento..."
    end

    def target_url
      "https://api.duckduckgo.com/?q=#{query}&format=json&skip_disambig=1"
    end

    attr_reader :query
  end
end