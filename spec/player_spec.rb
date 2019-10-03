require 'player'

describe Player do
  let(:player_1) { Player.new("Jess") }
  let(:player_2) { Player.new("Olly") }

  describe '#initialize' do
    it 'returns players name' do
      expect(player_1.name).to eq 'Jess'
    end

    it 'sets player HP to 60' do
      expect(player_1.points).to eq Player::DEFAULT_POINTS
    end
  end

  describe '#deduct_points' do
    it 'reduces player 2 by 10 HP' do
      expect { player_2.deduct_points }.to change { player_2.points }.by (-10)
    end
  end
end
