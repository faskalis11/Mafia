require 'rspec'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/citizen'
require_relative '../lib/mafia'
require_relative '../lib/equipment'

RSpec.describe 'Equipment' do
  it 'can add stats' do
    equipment = Equipment.new('A pistol', 5, 1, 0)
    player = Player.new
    citizen = Citizen.new
    player.role = citizen
    citizen.add_equipment(equipment)
    expect(player.role.attack).to be <= 8
  end

end
