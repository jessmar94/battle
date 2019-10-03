require 'game'

describe Game do

  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'player 1 attacks player 2' do
      expect(player_2).to receive(:deduct_points)
      subject.attack(player_2)
    end
  end

end
