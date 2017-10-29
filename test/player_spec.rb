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
    puts "#{player.experience}"
    player.experience += 10
    expect(player.experience).to eq(10)
  end
end
