class Game
  def initialize(roles, min, max)
    @roles = roles
    @min = min
    @max = max
    @players = []
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

  def players
    @players
  end

  def join(player)
    if @players.length < @max && !@players.include?(player)
      @players.push(player)
    end
  end
end