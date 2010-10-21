require File.dirname(__FILE__)+ '/../app/display_formatter'
require File.dirname(__FILE__)+ '/../app/strategies/default_honorific_strategy'
require File.dirname(__FILE__)+ '/../app/strategies/male_honorific_strategy'
require File.dirname(__FILE__)+ '/../app/strategies/female_honorific_strategy'
require File.dirname(__FILE__)+ '/../app/entities/male'
require File.dirname(__FILE__)+ '/../app/entities/female'
require File.dirname(__FILE__)+ '/../app/entities/dolphin'

describe "should" do
  before(:each) do
    @formatter = DisplayFormatter.new
    @strategies = []
    @strategies << FemaleHonorificStrategy.new
    @strategies << MaleHonorificStrategy.new
    @strategies << DefaultHonorificStrategy.new
    @formatter.strategies = @strategies

  end

  it "should return the default strategy if nothing matches" do
    dolphin = Dolphin.new
    @formatter.get_display_for(dolphin).should be_an_instance_of DefaultHonorificStrategy
  end


  it "should match a strategy by the matches method" do

  end

  it "should match the first strategy" do

  end

  it "should check all strategies for matches" do

  end

  it "should return display for matched strategy" do

  end

  it "should only call display on matched method" do

  end

end

