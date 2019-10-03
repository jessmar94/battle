require 'player'

describe Player do
  it 'returns players name' do
    player_1 = Player.new("Jess")
    expect(player_1.name).to eq 'Jess'
  end
end
