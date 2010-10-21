require File.dirname(__FILE__)+ '/../app/strategies/female_honorific_strategy'
require File.dirname(__FILE__)+ '/../app/entities/male'
require File.dirname(__FILE__)+ '/../app/entities/female'

describe "Female Formatter Strategy" do
  before(:each) do
    @female_strategy = FemaleHonorificStrategy.new
  end

  it "should not match on the male object" do
    male = Male.new
    @female_strategy.matches(male).should be false
  end

   it "should match on female object" do
    female = Female.new
    @female_strategy.matches(female).should be true
  end

  it "should return the object name" do
    female = Female.new
    female.name = "Athena"
    @female_strategy.display_honorific(female).should == "Ms. Athena"
  end
end

