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
    calculate_stats
  end

  def got_shot
    @dead = true
  end

  def calculate_stats
    #default stats
    @attack = 3
    @defence = 1
    @health = 100
    @equipments.each { |equip|
      @attack += equip.attack
      @defence += equip.defence
      @health += equip.health
    }
  end

  def to_s
     "Attack: #{@attack} Defence: #{@defence}  Health:  #{@health}"
  end
end
