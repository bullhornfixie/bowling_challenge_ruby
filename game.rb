require './lib/frame'

frame_count = 0 
scorecard = []

while frame_count != 10 
    frame = Frame.new 
    roll1 = frame.roll
    roll2 = frame.roll unless roll1 == "strike"
    puts "end of frame"
    frame_count +=1
    scorecard << {"frame_num"=>frame_count, "rolls"=>frame.rolls, "knocked_pins"=>frame.knocked_pins, "score"=>frame.score}
    puts scorecard
end

 