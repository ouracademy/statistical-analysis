require "./spec_helper"
require "../src/mean"

describe Stats do
  describe "mean" do
    it "should equals 2.0 on [1, 2, 3] in OO way" do
      Stats.mean([1, 2, 3]).should be_close(2.0, 0.01)
    end
    it "should equals 2.0 on [1, 2, 3] in FP way" do
      [1, 2, 3].mean.should be_close(2.0, 0.01)
    end
  end
end
