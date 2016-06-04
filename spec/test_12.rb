require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(4, 3)
    @enemy = Unit.new(5, 5)
  end

  describe "#dead?" do

    it "should return true if health_points are 0" do
      expect(@unit).to receive(:health_points).and_return(0)
      expect(@unit.dead?).to eq(true)
    end

    it "should prevent a dead unit from attacking live units" do
      expect(@unit).to receive(:health_points).and_return(0)
      expect(@unit.attack!(@enemy)).to eq(false)
    end

    it "should prevent an alive unit from attacking a dead unit" do
      expect(@enemy).to receive(:health_points).and_return(0)
      expect(@unit.attack!(@enemy)).to eq(false)
    end
  end
  
end