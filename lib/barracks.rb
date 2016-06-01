# In most strategy games, like Warcraft III, buildings can also be 
# attacked by Units. Since a Barracks is a building, it has 
# substantially more HP (500). Additionally, a Footman does only half
#  of its AP as damage to a Barracks. This is because they are quite 
#  ineffective against buildings.

# The damage amount should be an integer (Fixnum), but the ceiling 
# (ceil) of the division should be used as the resulting amount.

class Barracks

  attr_accessor :gold, :food, :health_points, :lumber

  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
  end

  def can_train_footman?
    gold >= 135 && food >= 2
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
  end

  def can_build_siege_engine?
    gold >= 200 && lumber >= 60 && food >= 3
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      Footman.new
    else
      nil
    end
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    else
      nil
    end
  end

  def build_siege_engine
    @gold -= 200 
    @lumber -= 60
    @food -= 3
  end

  def damage(attack_power)
    @health_points -= (attack_power / 2)
  end

end
