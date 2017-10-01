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

  def get_alive_players()
    array = []
    @players.each do |p|
      if p.role.dead == false
        array.push(p)
      end
    end
    return array
  end

end