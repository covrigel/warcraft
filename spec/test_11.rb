require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barrack = Barracks.new
  end

  describe "#damage" do
    it "should reduce the Barracks' HP with half of the footman's attack power" do
      @barrack.damage(10)
      expect(@barrack.health_points).to eq(495)
    end
  end
  
end