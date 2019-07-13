require "./spec_helper"

describe "binomial distribution" do
  it "should equals 0.07 if 2 success, 5 trials and p(success) = 0.1" do
    p = binomial_distribution(trials: 5, success_probability: 0.1)
    p.call(2).should be_close(0.0729, 0.0001)
  end
end
