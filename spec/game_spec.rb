require './lib/game'

describe Frame do 

  describe '.roll' do
    it 'asks the user to input pins knocked down' do 
      bowling = Frame.new 
      expect(bowling.roll(1)).to eq(1)
    end
  end

end