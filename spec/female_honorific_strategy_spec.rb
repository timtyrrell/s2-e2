require File.dirname(__FILE__)+ '/../lib/strategies/female_honorific_strategy'
require File.dirname(__FILE__)+ '/../lib/entities/male'
require File.dirname(__FILE__)+ '/../lib/entities/female'

describe "Female Formatter Strategy" do
  before(:each) do
    @female_strategy = FemaleHonorificStrategy.new
  end

  it "should not match on the male object" do
    male = Male.new "Loki"
    @female_strategy.matches?(male).should be false
  end

   it "should match on female object" do
    female = Female.new "Athena"
    @female_strategy.matches?(female).should be true
  end

  it "should return the object name" do
    female = Female.new "Athena"
    @female_strategy.display_honorific(female).should == "Ms. Athena"
  end
end

