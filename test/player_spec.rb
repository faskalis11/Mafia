require 'rspec'
require_relative '../player'

describe 'Player behaviour' do
  it 'should get a Citizen role' do
    player = Player.new
    player.role = 'Citizen'
    expect(player.role).to eq('Citizen')
  end

  it 'should get a Mafia role' do
    player = Player.new
    player.role = 'Mafia'
    expect(player.role).to eq('Mafia')
  end

  it 'should have gain experience' do
    player = Player.new
    player.experience += 10
    expect(player.experience).to eq(10)
  end

  it 'should have attack, defence and health' do
    player = Player.new
    player.attack = 5
    player.defence = 3
    player.health -= 10
    expect(player.attack).to be eq(5)
    expect(player.defence).to be eq(3)
    expect(player.heath).to be eq(90)
  end
end
