require 'rspec'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/citizen'
require_relative '../lib/mafia'

RSpec.describe 'Citizen behaviour' do
  it 'can be alive. Could be shot, then could be dead' do
    citizen = Citizen.new
    expect(citizen.dead).to be false
    citizen.got_shot
    expect(citizen.dead).to be true
  end

  it 'can vote during a day' do
    roles = %w[Citizen Mafia]
    min = 2
    max = 4
    new_game = Game.new(roles, min, max)
    player = Player.new
    player2 = Player.new
    player3 = Player.new
    player.role = Citizen.new
    player2.role = Mafia.new
    player3.role = Citizen.new
    new_game.join(player)
    new_game.join(player2)
    new_game.join(player3)
    player.role.vote = player2
    player2.role.vote = player
    player3.role.vote = player2
    new_game.collect_votes
    expect(player2.role.dead).to be true
    expect(player.role.dead).to be false
    expect(player3.role.dead).to be false
  end
end
