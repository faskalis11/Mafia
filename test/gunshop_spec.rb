require 'rspec'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/citizen'
require_relative '../lib/mafia'
require_relative '../lib/equipment'

RSpec.describe 'Guns shop behaviour' do
  it 'sell gun to citizen' do
    mafia = Mafia.new
    gunshop = Gunshop.new
    weapon = gunshop.sell_weapon('glock')
    expect(weapon.attack).to be(6)
  end

end
