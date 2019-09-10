require "./spec_helper"

describe Math do

  it "correctly do permutation in object oriented form" do
    4.permutation(r: 3).should eq 24
  end

  it "correctly do permutation in functional" do
    Math.permutation(4, 3).should eq 24
  end

  it "correctly do combination in object oriented form" do
    4.combination(r: 3).should eq 4
  end

  it "correctly do combination in functional" do
    Math.combination(4, 3).should eq 4
  end
end
