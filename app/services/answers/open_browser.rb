module Answers
  class OpenBrowser
    def initialize(query)
      @query = query
    end

    def self.execute(query)
      self.new(query).open_browser
    end

    def open_browser
      system("xdg-open #{target_url}")
    end

    def target_url
      "https://duckduckgo.com/?q=#{formatted_query}"
    end

    def formatted_query
      query.gsub(' ', '+')
    end

    attr_reader :query
  end
end