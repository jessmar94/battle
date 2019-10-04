require 'player'

describe Player do

  let(:player_1) { Player.new("Jess") }
  let(:player_2) { Player.new("Olly") }

  describe '#initialize' do
    it 'returns player name' do
      expect(player_1.name).to eq "Jess"
    end

    it 'starts player with default hit points' do
      expect(player_1.hit_points).to eq 60
    end
  end

  describe '#deduct_points' do
    it 'reduces player 2 points by 10' do
      expect { player_2.deduct_points }.to change { player_2.hit_points }.by(-10)
    end
  end
end
