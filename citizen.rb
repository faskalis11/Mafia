# A citizen role class
class Citizen
  attr_accessor :dead
  attr_accessor :vote

  def initialize
    @dead = false
  end

  def got_shot
    @dead = true
  end
end
