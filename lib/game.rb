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
    return unless @players.length < @max
    @players.push(player) unless @players.include?(player)
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
    att_dmg = 0
    def_dmg = 0
    att_att = attacker.attack
    att_def = attacker.defence
    def_att = defender.attack
    def_def = defender.defence
    att_h = attacker.health
    def_h = defender.health
    att_dmg = att_att - def_def unless def_def > att_att
    def_dmg = def_att - att_def unless att_def > def_att
    return defender if att_dmg.zero?
    return attacker if def_dmg.zero?
    return defender if def_h / att_dmg > att_h / def_dmg
    attacker
  end
end
