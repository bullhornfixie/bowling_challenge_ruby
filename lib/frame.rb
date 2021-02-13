
class Frame 
  attr_reader :score, :rolls, :knocked_pins, :spare_bonus

  def initialize
    @score = 0 
    @rolls = 0 
    @total_pins = 10
    @knocked_pins = 0
    @spare_bonus = false 
    @strike = false 
  end 

  def roll
    puts "player enter pins knocked down"
    pins_down = gets.chomp.to_i 

    @score += pins_down
    @rolls +=1
    @knocked_pins += pins_down
    @total_pins -= pins_down

    if pins_down == 10 
      @strike = true 
      return 'strike'
    end 
  end 

  def spare 
    if @strike == false 
      @total_pins == 0 ? @spare_bonus = true : @spare_bonus = false 
    end 
  end 
end