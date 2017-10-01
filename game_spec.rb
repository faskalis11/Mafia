require 'rspec'
require_relative 'player'
require_relative 'game'


describe 'My behaviour' do

  it 'should have roles for a game' do
    roles = ["Citizen", "Mafia"]
    newGame = Game.new(roles, nil, nil)
    expect(newGame.roles).not_to be_empty
  end

  it 'should have minimum and maximum players limit' do
    roles = ["Citizen", "Mafia"]
    min, max = 5, 10
    newGame = Game.new(roles, min, max)
    expect(newGame.min).not_to be_empty
    expect(newGame.max).not_to be_empty
    expect(newGame.max).to >= newGame.min
  end


end