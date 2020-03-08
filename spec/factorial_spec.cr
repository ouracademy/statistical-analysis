require "./spec_helper"

describe Math do
  it "correctly do factorial in object oriented form" do
    3.factorial.should eq 6
    0.factorial.should eq 1
  end

  it "correctly do factorial in functional" do
    Math.factorial(3).should eq 6
    Math.factorial(0).should eq 1
  end
end
