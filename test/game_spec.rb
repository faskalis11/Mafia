require 'rspec'
require_relative '../player'
require_relative '../game'
require_relative '../citizen'

describe 'Mafia game behaviour' do
  it 'should have roles for a game' do
    roles = %w[Citizen Mafia]
    new_game = Game.new(roles, 2, 10)
    expect(new_game.roles).not_to be_empty
  end

  it 'should have minimum and maximum players limit. ' do
    roles = %w[Citizen Mafia]
    min = 4
    max = 8
    new_game = Game.new(roles, min, max)
    expect(new_game.min).to be > 0
    expect(new_game.max).to be > 0
  end

  it 'should have maximum player lower or equals minimum limit. ' do
    roles = %w[Citizen Mafia]
    min = 4
    max = 8
    new_game = Game.new(roles, min, max)
    expect(new_game.max).to be >= new_game.min
  end

  it 'should accept players to the game' do
    roles = %w[Citizen Mafia]
    min = 4
    max = 9
    new_game = Game.new(roles, min, max)
    player1 = Player.new
    new_game.join(player1)
    expect(new_game.players).not_to be_empty
  end

  it 'should not allow more player than there is a limit' do
    roles = %w[Citizen Mafia]
    min = 2
    max = 4
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
    expect(new_game.players.length).to be <= max
  end

  it 'already joined player cannot join twice' do
    roles = %w[Citizen Mafia]
    min = 2
    max = 4
    new_game = Game.new(roles, min, max)
    player1 = Player.new
    new_game.join(player1)
    new_game.join(player1)
    expect(new_game.players.length).to be 1
  end

  it 'should let know alive players' do
    roles = %w[Citizen Mafia]
    min = 2
    max = 4
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
    player1.role = Citizen.new
    player2.role = Citizen.new
    player3.role = Citizen.new
    player4.role = Citizen.new
    player5.role = Citizen.new
    player1.role.got_shot
    player5.role.got_shot
    expect(new_game.alive_players.length).to be 3
  end
end

describe 'battle beetween players' do

  it 'should fight monster'
end