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
    min, max = 4, 10
    new_game = Game.new(roles, min, max)
    expect(new_game.min).to be > 0
    expect(new_game.max).to be > 0

    expect(new_game.max).to be >= new_game.min
  end

  it 'should accept players to the game' do
    roles = ["Citizen", "Mafia"]
    min, max = 4, 10
    new_game = Game.new(roles, min, max)
    player1 = Player.new
    new_game.join(player1)
    expect(new_game.players).not_to be_empty

  end

  it 'should not allow more player than there is a limit' do
    roles = ["Citizen", "Mafia"]
    min, max = 2, 4
    new_game = Game.new(roles, min, max)
    player1 = Player.new
    player2 = Player.new
    player3 = Player.new
    player4 = Player.new
    player5 = Player.new
    new_game.join(player1)
    new_game.join(player2)
    new_game.join(player3)
    new_game.join(player4)
    new_game.join(player5)

    expect(new_game.players.length).not_to be > max
  end

end