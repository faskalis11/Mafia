require 'rspec'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/citizen'
require_relative '../lib/mafia'
require_relative '../lib/equipment'

RSpec.describe 'Mafia behaviour' do
  it 'can equipt a gun' do
    mafia = Mafia.new
    mafia.add_equipment(Equipment.new('A pistol', 5, 0, 5))
    expect(mafia.equipments).not_to be_empty
  end

  it 'has own bonuses' do
    mafia = Mafia.new
    expect(mafia.attack).to eq(8)
    expect(mafia.defence).to eq(6)
    expect(mafia.health).to eq(105)
  end
end
