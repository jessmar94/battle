require 'game'

describe 'Game' do

  let(:player_1) { double(Player.new("Jess")) }
  let(:player_2) { double(Player.new("Zaira")) }

  describe '#attack' do
    it 'player 1 attacks player 2' do
      # allow(player_2).to receive(:deduct_points) { 50 }
      expect(subject.attack).to eq "Zaira"
      # expect(player_2.points).to eq 50
    end
  end

end
