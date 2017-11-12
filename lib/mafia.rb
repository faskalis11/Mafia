# a game role
class Mafia < Citizen
  def initialize
    super
    @attack += 5
    @defence += 5
    @health += 5
  end

  def calculate_stats
    super
    @attack += 5
    @defence += 5
    @health += 5
  end
end
