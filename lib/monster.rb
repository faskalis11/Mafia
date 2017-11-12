# player is going to fight these monsters
class Monster
  attr_accessor :attack, :defence, :health, :dead
  attr_reader :name, :description, :level

  def initialize(name, description, attack, defence, health)
    @name = name
    @description = description
    @level = ((attack + defence) / 2).to_i
    @attack = attack
    @defence = defence
    @health = health
    @dead = false unless health < 0
  end
end
