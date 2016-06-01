

class Unit

  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    return false if dead? || enemy.dead? 
    enemy.damage(attack_power) 
  end

  def damage(damage_points)
    @health_points -= damage_points 
  end

  def dead?
    health_points <= 0
  end

end