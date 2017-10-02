require 'rspec'
require_relative '../player'
require_relative '../game'
require_relative '../citizen'
require_relative '../mafia'

describe 'Night behaviour' do
  it 'mafia kills during a night' do
    # creating a game
    roles = %w[Citizen Mafia]
    min = 2
    max = 10
    new_game = Game.new(roles, min, max)
    player1 = Player.new
    player2 = Player.new
    player3 = Player.new
    mafia_player = Player.new
    new_game.join(player1)
    new_game.join(player2)
    new_game.join(player3)
    new_game.join(mafia_player)
    player1.role = Citizen.new
    player2.role = Citizen.new
    player3.role = Citizen.new
    mafia_player.role = Mafia.new
    new_game.alive_players.each do |m|
      if m.role.class.name == 'Mafia'
        # mafia chooses who to kill
        player1.role.got_shot
      end
    end
    expect(player1.role.dead). to be true
  end
end
