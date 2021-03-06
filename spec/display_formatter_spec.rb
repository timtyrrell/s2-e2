require File.dirname(__FILE__)+ '/../lib/display_formatter'
require File.dirname(__FILE__)+ '/../lib/strategies/default_honorific_strategy'
require File.dirname(__FILE__)+ '/../lib/strategies/male_honorific_strategy'
require File.dirname(__FILE__)+ '/../lib/strategies/judy_honorific_strategy'
require File.dirname(__FILE__)+ '/../lib/strategies/female_honorific_strategy'
require File.dirname(__FILE__)+ '/../lib/entities/male'
require File.dirname(__FILE__)+ '/../lib/entities/female'
require File.dirname(__FILE__)+ '/../lib/entities/dolphin'

describe "display formatter tests" do
  before(:each) do
    @formatter = DisplayFormatter.new
    @formatter.strategies << @judy_strategy = JudyHonorificStrategy.new
    @formatter.strategies << @female_strategy = FemaleHonorificStrategy.new
    @formatter.strategies << @male_strategy = MaleHonorificStrategy.new
    @formatter.strategies << @default_strategy = DefaultHonorificStrategy.new
  end

  it "should return the default strategy if nothing matches" do
    dolphin = Dolphin.new "Echo"
    @formatter.find_strategy_for(dolphin).should be_an_instance_of DefaultHonorificStrategy
  end

  it "should match a strategy by the matches method" do
    dolphin = Dolphin.new "Echo"
    @judy_strategy.stub!(:matches?).and_return(true)
    @formatter.find_strategy_for(dolphin).should == @judy_strategy
  end

  it "should return display for matched strategy" do
    dolphin = Dolphin.new "Echo"

    @default_strategy.stub!(:matches?).and_return(true)
    @default_strategy.stub!(:display_honorific).and_return("test")

    @formatter.get_display_for(dolphin).should == "test"
  end
end

