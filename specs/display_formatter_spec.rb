require File.dirname(__FILE__)+ '/../app/display_formatter'
require File.dirname(__FILE__)+ '/../app/strategies/default_honorific_strategy'
require File.dirname(__FILE__)+ '/../app/strategies/male_honorific_strategy'
require File.dirname(__FILE__)+ '/../app/strategies/judy_honorific_strategy'
require File.dirname(__FILE__)+ '/../app/strategies/female_honorific_strategy'
require File.dirname(__FILE__)+ '/../app/entities/male'
require File.dirname(__FILE__)+ '/../app/entities/female'
require File.dirname(__FILE__)+ '/../app/entities/dolphin'

describe "display formatter tests" do
  before(:each) do
    @formatter = DisplayFormatter.new
    formatter_strategies = []
    formatter_strategies << JudyHonorificStrategy.new
    formatter_strategies << FemaleHonorificStrategy.new
    formatter_strategies << MaleHonorificStrategy.new
    formatter_strategies << DefaultHonorificStrategy.new
    @formatter.strategies = formatter_strategies

  end

  it "should return the default strategy if nothing matches" do
    dolphin = Dolphin.new
    dolphin.name = "Echo"
    @formatter.get_display_for(dolphin).should == "Echo"
  end


#  it "should match a strategy by the matches method" do

#  end

#  it "should match the first strategy" do

#  end

#  it "should check all strategies for matches" do

#  end

#  it "should return display for matched strategy" do

#  end

#  it "should only call display on matched method" do

#  end

end

