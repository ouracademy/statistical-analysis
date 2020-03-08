require "./spec_helper"

X = [2, 3, 4, 5, 6]
describe DistributionFunction do
  # See book: Statistical analysis for Engineers and Scientists

  describe "f(x) = 5.2551 / x ** 3" do
    it "#is" do
      DistributionFunction.is?(X) { |x| 5.2551 / x ** 3 }.should be_true
    end
  end
  describe "f(x) = 10 / x ** 3" do
    it "#is not" do
      DistributionFunction.is?(X) { |x| 10.0 / x ** 3 }.should be_false
    end
  end
end
