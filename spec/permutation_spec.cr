require "./spec_helper"

describe Math do

  it "correctly do permutation in object oriented form" do
    4.permutation(r: 3).should eq 24
  end

  it "correctly do permutation in functional" do
    Math.permutation(4, 3).should eq 24
  end

  it "fail permute on not meet n ≥ r ≥ 0" do
    expect_raises(ArgumentError) do
      3.permutation(r: 4)
    end
    expect_raises(ArgumentError) do
      4.permutation(r: -1)
    end
    expect_raises(ArgumentError) do
      -1.permutation(r: 0)
    end
  end


  it "correctly do combination in object oriented form" do
    4.combination(r: 3).should eq 4
  end

  it "correctly do combination in functional" do
    Math.combination(4, 3).should eq 4
  end

  it "fail combine on not meet n ≥ r ≥ 0" do
    expect_raises(ArgumentError) do
      3.permutation(r: 4)
    end
    expect_raises(ArgumentError) do
      4.permutation(r: -1)
    end
    expect_raises(ArgumentError) do
      -1.permutation(r: 0)
    end
  end
end
