require 'player'

describe Player do
  let(:player_1) { Player.new("Jess") }
  let(:player_2) { Player.new("Olly") }

  describe '#initialize' do
    it 'returns players name' do
      expect(player_1.name).to eq 'Jess'
    end

    it 'sets player HP to 60' do
      expect(player_1.points).to eq 60
    end
  end

  describe '#deduct_points' do
    it 'reduces player 2 by 10 HP' do
      
    end
  end
end
