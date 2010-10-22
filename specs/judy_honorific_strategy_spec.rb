require File.dirname(__FILE__)+ '/../app/strategies/judy_honorific_strategy'
require File.dirname(__FILE__)+ '/../app/entities/female'

describe "Judy Formatter Strategy" do
  before(:each) do
    @judy_strategy = JudyHonorificStrategy.new
  end

  it "should not match on the female object with the name of Athena" do
    female = Female.new
    @judy_strategy.matches(female).should be false
  end

   it "should match on female object" do
    female = Female.new
    female.name = "Judy"
    @judy_strategy.matches(female).should be true
  end

  it "should return the object name" do
    female = Female.new
    female.name = "Judy"
    @judy_strategy.display_honorific(female).should == "Judge Judy"
  end
end

