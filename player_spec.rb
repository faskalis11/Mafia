require 'rspec'
require_relative 'player'

describe 'Player behaviour' do

  it 'should get a Citizen role' do
    player = Player.new
    player.role = 'Citizen'
    puts (player.role)
    player.role
    #true.should == true
    expect(player.role).to eq('Citizen')
  end

  it 'should get a Mafia role' do
    player = Player.new
    player.role = 'Mafia'
    puts (player.role)
    player.role
    #true.should == true
    expect(player.role).to eq('Mafia')
  end

end