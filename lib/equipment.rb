# an equipment
class Equipment
  attr_reader :name, :attack, :defence, :health

  def initialize(name, attack, defence, health)
    @name = name
    @attack = attack
    @defence = defence
    @health = health
  end
end
