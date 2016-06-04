require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end    

  describe '#can_build_siege_engine?' do 
    it 'returns true if there are enough resources to build engine' do
      expect(@barracks.can_build_siege_engine?).to be_truthy
    end

    it 'returns false if there is not suffiecient food' do
      expect(@barracks).to receive(:food).and_return(1)
      expect(@barracks.can_build_siege_engine?).to be_truthy
    end

      # expect(@barracks).to receive(:food).and_return(4)
      # expect(@barracks.can_train_peasant?).to be_falsey

  #   # it 'returns false if there is not sufficient gold' do
  #   #   expect(@barracks).to receive(:gold).and_return(1)
  #   #   expect(@barracks.can_build_siege_engine?).to be_falsey
  #   # end

  #   # it 'returns false if there is not sufficient lumber' do
  #   # end 

  end

  describe '#build_siege_engine' do

    it 'costs 200 gold to build a siege_engine' do 
      @barracks.build_siege_engine
      expect(@barracks.gold).to eq(800)
    end

    it 'costs 60 lumber to build a siege_engine' do 
      @barracks.build_siege_engine
      expect(@barracks.lumber).to eq(440)
    end

    it 'costs 3 food to build a siege_engine' do 
      @barracks.build_siege_engine
      expect(@barracks.food).to eq(77)
    end

  end

end