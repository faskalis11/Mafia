# game or just a room for mafia game
class Game
  def initialize(roles, min, max)
    @roles = roles
    @min = min
    @max = max
    @players = []
  end

  attr_reader :roles, :max, :min, :players

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

  def collect_votes
    candidates = generate_voting_table
    alive_players.each do |player|
      candidates[player.role.vote] = candidates[player.role.vote] + 1 unless player.role.vote.nil?
    end
    voted_out = candidates.key(candidates.values.max)
    voted_out.role.dead = true
  end

  def generate_voting_table
    candidates = {}
    alive_players.each do |player|
      candidates[player.role.vote] = 0
    end
    candidates
  end
end
