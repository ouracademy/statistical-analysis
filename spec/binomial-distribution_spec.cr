require "./spec_helper"

describe "binomial distribution" do
  it "should equals 0.07 if 2 success, 5 trials and p(success) = 0.1" do
    p = binomial_distribution(trials: 5, success_probability: 0.1)
    p.call(2).should be_close(0.0729, 0.0001)
  end
  it "fails on a success_probability less than 0 or greater than 1" do
    expect_raises(ArgumentError, "success_probability must be between 0 and 1, success_probability: -1.0") do
      p = binomial_distribution(trials: 5, success_probability: -1.0)
    end
    expect_raises(ArgumentError, "success_probability must be between 0 and 1, success_probability: 1.2") do
      p = binomial_distribution(trials: 5, success_probability: 1.2)
    end
  end
  it "fails on a negative trials" do
    expect_raises(ArgumentError, "trials >= 0, trials: -1") do
      p = binomial_distribution(trials: -1, success_probability: 0.1)
    end
  end
end
