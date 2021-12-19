require_relative "../../services/answers/ddg_instant_answers"
require_relative "../../services/answers/open_browser"
require_relative "../../services/answers/time_telling"

module Utils
  module Macros
    def input_is_macro?(input)
      return false unless input.is_a?(String)
      return true unless input[0] != "!" # this is the magic char that indicate an input is a macro  
    end

    def parse_macro(input)
      return "" unless input_is_macro?(input)
      partitioned_input = input.partition(" ") 
      macro = partitioned_input.first
      user_content = partitioned_input.last
      case macro
      when "!search"
        results = Answers::DDGInstantAnswers.execute(user_content)
        return results unless results.empty?
        if Answers::OpenBrowser.execute(user_content)
          return "I couldn't find anything quick with #{user_content}, so i opened a browser tab so you can check it"
        end
      when "!time"
        return Answers::TimeTelling.execute
      end
      ""
    end
  end
end