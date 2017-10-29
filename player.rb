# a player who will be able to join mafia game
class Player
  attr_accessor :role, :experience, :attack, :defence, :health

  def initialize()
    @experience = 0
    @attack = 1
    @defence = 0
    @health = 100
  end
end
