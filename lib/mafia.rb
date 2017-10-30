# a game role
class Mafia < Citizen
  attr_accessor :equipments

  def initialize
    @equipments = Array.new
  end

  def add_equipment(equipment)
    @equipments.insert(0, equipment)
  end
end
