require 'rspec'
require_relative 'player'
require_relative 'game'
require_relative 'citizen'

describe 'Night behaviour' do

  it 'mafia kills during a night' do
    # creating a game
    roles = ["Citizen", "Mafia"]
    min, max = 2, 4
    new_game = Game.new(roles, min, max)
    player1 = Player.new
    player2 = Player.new
    player3 = Player.new
    player4 = Player.new
    mafia = Player.new
    new_game.join(player1)
    new_game.join(player2)
    new_game.join(player3)
    new_game.join(player4)
    new_game.join(mafia)
    player1.role = Citizen.new
    player2.role = Citizen.new
    player3.role = Citizen.new
    player4.role = Citizen.new
    mafia.role = Mafia.new

    new_game.get_alive_players.each do |m|
      if m.role.class.name == "Mafia"
        #mafia chooses who to kill
        puts ("kills")
        player1.role.got_show()
      end
    end
    expect(player1.role.dead). to be true

  end
end