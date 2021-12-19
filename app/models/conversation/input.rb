# A (hopefully!) small singleton class that will handle user input
class Input
  def self.get
    gets.chomp.downcase    
  end
end