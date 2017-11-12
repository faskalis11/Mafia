require 'rspec'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/citizen'
require_relative '../lib/mafia'
require_relative '../lib/equipment'
require_relative '../lib/gunshop'

RSpec.describe 'Guns shop behaviour' do
  it 'sell gun to citizen' do
    gunshop = Gunshop.new
    glock = Equipment.new('Glock', 6, 0, 0)
    gunshop.add_weapon(glock)
    weapon = gunshop.sell_weapon('Glock')
    expect(weapon.attack).to be(6)
  end

  it 'receive guns' do
  end
end
