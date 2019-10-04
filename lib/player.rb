class Player

  attr_reader :name, :hit_points

  DEFAULT_HIT_POINTS = 60

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def deduct_points
    @hit_points -= random_points
  end

  def random_points
    rand(1..15)
  end

end
