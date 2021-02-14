require './lib/frame'

class Game 

  def initialize
    @frame_count = 0
    @score_card = []
    @total_score = 0
    @spare = false 
  end

  def start
    while @frame_count != 6
      frame = Frame.new 
      roll1 = frame.roll

      if roll1 == 10
        puts "strike!"
        roll2 = 0 
      else 
        roll2 = frame.roll 
      end 

      @total_score += (roll1 + roll2)
      puts "end of frame"
      @frame_count +=1

      self.spare_log(roll1, roll2)
      puts @score_card << {"frame_num"=>@frame_count, "roll1"=>roll1, "roll2" => roll2, "score"=> @total_score, "spare" => @spare} 
      puts @total_score
    end
  end

  def spare_log(roll1, roll2)
    roll1 != 10 && roll1 + roll2 == 10 ? @spare = true : @spare = false 
  end

end

kingpin = Game.new
kingpin.start 

