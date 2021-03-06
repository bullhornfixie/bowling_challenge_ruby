require './lib/game'

describe Game do 
  let(:kingpin) { Game.new }

  it 'creates a new game of bowling with 10 frames' do
    expect(kingpin).to respond_to :start
    expect(kingpin).to respond_to :roll 
    expect(kingpin).to respond_to :score
    expect(kingpin).to respond_to :spare
    expect(kingpin).to respond_to :end 
  end

  describe '.spare' do 
    it 'sets spare_bonus instance variable to true when remaining pins are knocked down on roll 2' do 
      frame = kingpin.spare(2, 8)
      expect(frame).to eq true 
    end
  end 

end 
