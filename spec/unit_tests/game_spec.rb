require 'game'

describe Game do

  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#attacker' do
    it 'retrieves attacker' do
      expect(game.attacker).to eq player_1
    end
  end

  describe '#defender' do
    it 'retrieves defender' do
      expect(game.defender).to eq player_2
    end
  end

  describe '#attack' do
    it 'responds to #deduct_points method' do
      expect(player_2).to receive(:deduct_points)
      game.attack(player_2)
    end
  end

  describe '#switch_turn' do
    it 'lets player 2 attack player 1' do
      game.switch_turn
      expect(game.attacker).to eq player_2 
    end
  end

end
