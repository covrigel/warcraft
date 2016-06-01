# http://classic.battle.net/war3/human/units/footman.shtml

require_relative 'unit'
require_relative 'barracks'

class Footman < Unit

  attr_reader :health_points, :attack_power
  def initialize
    # Need to default the 2 instance variables here
    # Also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    @health_points = 60
    @attack_power = 10
  end

  def attack!(enemy)
    enemy.damage(10)
  end

  def damage(damage_points)
    @health_points -= damage_points
  end

end


# bobby = Footman.new
# puts bobby.attack_power