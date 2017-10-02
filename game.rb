# game or just a room for mafia game
class Game
  def initialize(roles, min, max)
    @roles = roles
    @min = min
    @max = max
    @players = []
  end

  attr_reader :roles
  attr_reader :max
  attr_reader :min
  attr_reader :players

  def join(player)
    if @players.length < @max && !@players.include?(player)
      @players.push(player)
    end
  end

  def alive_players
    array = []
    @players.each do |player|
      array.push(player) unless player.role.dead
    end
    array
  end
end
