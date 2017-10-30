# A citizen role class
class Citizen
  attr_accessor :dead, :attack, :defence, :health, :vote, :equipments

  def initialize
    @equipments = Array.new
    @attack = 3
    @defence = 1
    @health = 100
    @dead = false
  end

  def add_equipment(equipment)
    @equipments.insert(0, equipment)
  end

  def got_shot
    @dead = true
  end
end
