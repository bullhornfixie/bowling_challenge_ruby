
class Frame 
  attr_reader :score, :rolls, :knocked_pins, :spare_bonus

  def initialize
    @score = 0 
    @rolls = 0 
    @total_pins = 10
    @knocked_pins = 0
  end 

  def roll
    puts "player enter pins knocked down"
    pins_down = gets.chomp.to_i 

    @score += pins_down
    @rolls +=1
    @knocked_pins += pins_down
    @total_pins -= pins_down

    pins_down 
  end
end