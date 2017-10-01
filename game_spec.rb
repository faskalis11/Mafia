require 'rspec'
require_relative 'player'
require_relative 'game'


describe 'My behaviour' do

  it 'should have roles for a game' do
    roles = ["Citizen", "Mafia"]
    new_game = Game.new(roles, nil, nil)
    expect(new_game.roles).not_to be_empty
  end

  it 'should have minimum and maximum players limit. Maximum must not be lower than minimum ' do
    roles = ["Citizen", "Mafia"]
    min, max = 5, 10
    new_game = Game.new(roles, min, max)
    expect(new_game.min).to be > 0
    expect(new_game.max).to be > 0

    expect(new_game.max).to be >= new_game.min
  end


end