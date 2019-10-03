class Player

  DEFAULT_POINTS = 60

  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = DEFAULT_POINTS
  end

  def attack(opponent)
    opponent.deduct_points
  end
  #
  def deduct_points
    @points -= 10
  end

end
