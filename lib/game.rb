class Game 

  def initialize
    @frame_count = 0
    @total_score = 0
    @spare_bonus = false 
  end

  def start
    while @frame_count != 6
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
  
  def spare(roll1, roll2)
    if (10 - (roll1 + roll2)) == 0 
      @spare_bonus = true
    else
      @spare_bonus = false 
    end
  end
  
  def score(roll1, roll2, bonus)
    roll1 = roll1 * 2 unless bonus == false 
    roll2 = roll2 == nil ? roll2 = 0 : roll2
    @total_score += (roll1 + roll2)
  end

  def end 
    puts "end of frame and your score is #{@total_score}"
  end
end

kingpin = Game.new
kingpin.start


