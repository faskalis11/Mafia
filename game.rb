class Game
  def initialize(roles, min, max)
    @roles = roles
    @min = min
    @max = max
  end

  def roles
    @roles
  end

  def max
    @max
  end

  def min
    @min
  end
end