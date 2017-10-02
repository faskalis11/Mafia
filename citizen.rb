# A citizen role class
class Citizen
  attr_reader :dead

  def initialize
    @dead = false
  end

  def got_shot
    @dead = true
  end
end
