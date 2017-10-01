require 'rspec'
require_relative 'player'
require_relative 'game'


describe 'My behaviour' do

  it 'should have roles for a game' do
    roles = ["Citizen", "Mafia"]
    newGame = Game.new(roles)
    expect(newGame.roles).not_to be_empty
  end



end