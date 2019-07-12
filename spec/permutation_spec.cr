require "./spec_helper"

describe Math do

  it "correctly do factorial in object oriented form" do
    4.permutation(k: 3).should eq 24
  end

  it "correctly do factorial in functional" do
    Math.permutation(4, 3).should eq 24
  end
end
