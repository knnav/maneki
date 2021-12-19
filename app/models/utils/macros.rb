require_relative "../../services/answers/ddg_instant_answers"

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
        return Answers::DDGInstantAnswers.execute(user_content)
      end
      ""
    end
  end
end