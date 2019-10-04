require_relative 'player'

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end 

  def attacker
    @players.first
  end

  def defender
    @players.last
  end

  def attack(player)
    player.deduct_points
  end

  def switch_turn
    @players.reverse!
  end

  def game_over
    defender.hit_points <=0
  end

end
