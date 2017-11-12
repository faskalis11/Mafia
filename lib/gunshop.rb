require_relative '../lib/equipment'

# sell equipment to citizens
class Gunshop
  attr_reader :weapons

  def initialize
    @weapons = []
  end

  def add_weapon(weapon)
    weapons[0] = weapon
  end

  def sell_weapon(name)
    weapons[0] unless name.equal? weapons[0].name
  end
end
