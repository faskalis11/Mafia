# A citizen role class
class Citizen
  attr_accessor :dead
  attr_accessor :vote
  attr_accessor :equipments

  def initialize
    @equipments = Array.new
    @dead = false
  end

  def add_equipment(equipment)
    @equipments.insert(0, equipment)
  end

  def got_shot
    @dead = true
  end
end
