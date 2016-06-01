# http://classic.battle.net/war3/human/units/footman.shtml

require_relative 'unit'
require_relative 'barracks'

class Footman < Unit

  def initialize
    # Need to default the 2 instance variables here
    # Also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    super(60, 10)
  end

end


# bobby = Footman.new
# puts bobby.attack_power