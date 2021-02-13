require './lib/frame'

class Game 

  def initialize
    @frame_count = 0
    @score_card = []
  end

  def start
    while @frame_count != 5
      frame = Frame.new 
      roll1 = frame.roll
      roll2 = frame.roll unless roll1 == "strike"
      bonus = frame.spare
      self.bonus
      puts "end of frame"
      @frame_count +=1
      @score_card << {"frame_num"=>@frame_count, "rolls"=>frame.rolls, "knocked_pins"=>frame.knocked_pins, 
                    "score"=>frame.score, "bonus"=>frame.spare_bonus}
      puts @score_card
    end
  end

  def bonus
    puts "spare bonus feature to be added"
    # if on last frame the bonus = true then add knocked pins in current frame to current score 
  end

  def end 
    p total_score = @score_card.map { |s| s['score']}.reduce(0, :+)
  end 

end

kingpin = Game.new
kingpin.start 
kingpin.end
