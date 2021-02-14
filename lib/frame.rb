
class Frame 
  attr_reader :score

  def initialize
    @score = 0 
  end 

  def roll
    puts "player enter pins knocked down"
    pins_down = gets.chomp.to_i 

    @score += pins_down

    pins_down 
  end
end