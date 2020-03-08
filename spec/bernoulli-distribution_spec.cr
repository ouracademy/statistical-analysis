require "./spec_helper"

describe "bernoulli distribution" do
  it "equals 0.3=p(0) and 0.7=p(1)" do
    p = bernoulli_distribution(success_probability: 0.7)
    p.call(0).should be_close(0.3, 0.0001)
    p.call(1).should be_close(0.7, 0.0001)
  end
end
