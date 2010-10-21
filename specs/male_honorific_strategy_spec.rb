require File.dirname(__FILE__)+ '/../app/strategies/male_honorific_strategy'
require File.dirname(__FILE__)+ '/../app/entities/male'
require File.dirname(__FILE__)+ '/../app/entities/female'

describe "Male Formatter Strategy" do
  before(:each) do
    @male_strategy = MaleHonorificStrategy.new
  end

  it "should match on the male object" do
    male = Male.new
    @male_strategy.matches(male).should be true
  end

   it "should not match on female object" do
    female = Female.new
    @male_strategy.matches(female).should be false
  end

  it "should return the object name" do
    male = Male.new
    male.name = "Loki"
    @male_strategy.display_honorific(male).should == "Mr. Loki"
  end
end

