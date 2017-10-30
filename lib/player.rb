# a player who will be able to join mafia game
class Player
  attr_accessor :role, :experience, :attack, :defence, :health, :dead

  def initialize()
    @experience = 0
    @attack = 3
    @defence = 1
    @health = 100
    @dead = false
  end
end
