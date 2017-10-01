class Citizen

  attr_accessor :dead
  def initialize
    @dead = false
  end

  def got_shot()
    @dead = true
  end
end