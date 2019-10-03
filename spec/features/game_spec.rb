describe 'Game' do

  let(:player_1) { double("Player"), points: 60 } 
  let(:player_2) { double("Player"), points: 60 }

  describe '#attack' do
    it 'player 1 attacks player 2' do
      allow(player_2).to receive(:deduct_points) { 50 }
      expect(subject.attack(player_2)).to eq 50
    end
  end

end
