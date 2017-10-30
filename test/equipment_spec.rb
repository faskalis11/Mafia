require 'rspec'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/citizen'
require_relative '../lib/mafia'
require_relative '../lib/equipment'

RSpec.describe 'Equipment' do
  it 'can add stats' do
    equipment = Equipment.new('A pistol', 1, 5, 0)
    player = Player.new
    mafia = Mafia.new
    player.role = mafia
    mafia.add_equipment(equipment)
    expect(player.attack).to eq(8)
  end

end
