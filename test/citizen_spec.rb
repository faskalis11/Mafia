require 'rspec'
require_relative '../player'
require_relative '../game'
require_relative '../citizen'
require_relative '../mafia'

describe 'Citizen behaviour' do
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
    citizen = Citizen.new
    citizen2 = Mafia.new
    citizen3 = Citizen.new
    new_game.join(citizen)
    new_game.join(citizen2)
    new_game.join(citizen3)
    new_game.start_voting
    citizen.vote(citizen2)
    citizen2.vote(citizen)
    citizen3.vote(citizen2)
    new_game.close_voting
    expect(citizen2.dead).to be true
    expect(citizen.dead).to be false
    expect(citizen3.dead).to be false
  end
end
