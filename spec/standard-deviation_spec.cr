require "./spec_helper"

describe Stats do
  describe "#standard_deviation" do
    it "equals 2.0 on [1, 2, 3] in OO way" do
      Stats.standard_deviation([1, 2, 3]).should be_close(0.8165, 0.01)
      Stats.std_dev([1, 2, 3]).should be_close(0.8165, 0.01)
    end
    it "equals 2.0 on [1, 2, 3] in FP way" do
      [1, 2, 3].standard_deviation.should be_close(0.8165, 0.01)
      [1, 2, 3].std_dev.should be_close(0.8165, 0.01)
    end
  end
end
