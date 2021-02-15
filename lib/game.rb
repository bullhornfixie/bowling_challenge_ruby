class Game 

  def initialize
    @frame_count = 0
    @total_score = 0
    @spare_bonus = false 
  end

  def start
    while @frame_count != 1
      roll1 = self.roll
      roll2 = self.roll unless roll1 == 10
      self.score(roll1, roll2, @spare_bonus)
      self.spare(roll1, roll2)
      @frame_count +=1
      self.end 
    end
  end

  def roll 
    puts "player enter pins knocked down"
    pins_down = gets.chomp.to_i 
  end
  
  def score(roll1, roll2=0, spare_bonus)
    roll1 = roll1 * 2 unless spare == false 
    @total_score += (roll1 + roll2)
  end

  def spare(roll1, roll2)
    roll1 != 10 && roll1 + roll2 == 10 ? @spare_bonus = true : @spare_bonus = false 
  end

  def end 
    puts "end of frame and your score is #{@total_score}"
  end
end



