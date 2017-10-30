require 'rspec'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/citizen'
require_relative '../lib/mafia'

RSpec.describe 'Mafia behaviour' do
  it 'can hold a gun' do
    mafia = Mafia.new
    mafia.gun = Gun.new()
  end

end
