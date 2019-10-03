require 'game'

describe Game do

  let(:game) { described_class.new(player_1, player_2) }

  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#initialization' do
    it 'retrieves the first player' do
      expect(subject.player_1).to eq player_1
    end 
    it 'retrieves the first player' do
      expect(subject.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'player 2 attacked' do
      expect(player_2).to receive(:deduct_points)
      subject.attack(player_2)
    end
  end

end
