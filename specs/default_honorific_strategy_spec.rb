require File.dirname(__FILE__)+ '/../app/strategies/default_honorific_strategy'
require File.dirname(__FILE__)+ '/../app/entities/male'
require File.dirname(__FILE__)+ '/../app/entities/female'

describe "Default Formatter Strategy" do
  before(:each) do
    @default = DefaultHonorificStrategy.new
  end
  it "should match on female object" do
    female = Female.new "Athena"
    @default.matches(female).should be true
  end

  it "should match on the male object" do
    male = Male.new "Loki"
    @default.matches(male).should be true
  end

  it "should return the object name" do
    male = Male.new "Loki"
    @default.display_honorific(male).should == "Loki"
  end
end

