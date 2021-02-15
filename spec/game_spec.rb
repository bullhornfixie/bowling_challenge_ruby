require './lib/game'

describe Game do 

  describe '.start' do
    it 'asks the user to input pins knocked down' do 
      kingpin = Game.new 
      kingpin.start 
    end
  end

end