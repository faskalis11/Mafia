#player is going to fight these monsters
class Monster
  attr_accessor :level, :attack, :defence, :health, :dead
  attr_reader :name, :description

  def initialize(name, description, level, attack, defence, health)
    @name = name
    @description =description
    @level = level
    @attack = attack
    @defence = defence
    @health = health
    @dead = false unless health < 0
  end
end