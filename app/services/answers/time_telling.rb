module Answers
  class TimeTelling
    def self.execute
      self.new.tell_time
    end

    def tell_time
      "Right now it is #{formatted_time}."
    end

    def formatted_time
      Time.now.strftime("%H:%M")
    end
  end
end