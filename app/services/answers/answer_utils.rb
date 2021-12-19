module AnswerUtils
  def prettyfied_answer(answer)
    "#{separator}\n\"#{answer}\"\n#{separator}"
  end

  def separator
    "*==============================*"
  end
end