
class Frame 
  attr_reader :score, :rolls, :knocked_pins

  def initialize
    @score = 0 
    @rolls = 0 
    @knocked_pins = 0
  end 

  def roll
    puts "player enter pins knocked down"
    pins_down = gets.chomp.to_i 

    if pins_down == 10
      @score += 10
      @knocked_pins = 10 
      @rolls +=1
      return "strike"
    else 
      @score += pins_down 
      @knocked_pins += pins_down 
      @rolls += 1
    end
  end 

end