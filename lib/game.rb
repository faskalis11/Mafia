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
    if @players.length < @max
      @players.push(player) unless @players.include?(player)
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
      candidates[player.role.vote] += 1
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

  def fight(attacker, defender)
    damage1 = 0
    damage2 = 0
    damage1 = attacker.attack - defender.defence unless defender.defence > attacker.attack
    damage2 = defender.attack - attacker.defence unless attacker.defence > defender.attack
    attacker.health -= damage2
    defender.health -= damage1
    attacker.dead = true if attacker.health <= 0
    defender.dead = true if defender.health <= 0
    return defender if attacker.dead
    return attacker if defender.dead
    return attacker if attacker.health > defender.health
    defender
  end
end
