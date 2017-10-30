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
    # expext(mafia.equipments.).to be
  end

end
