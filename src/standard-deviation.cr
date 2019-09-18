module Stats
  extend self

  def standard_deviation(e : Enumerable(Number))
    e.standard_deviation
  end

  def std_dev(e : Enumerable(Number))
    standard_deviation(e)
  end
end

module Enumerable(Number)
  # Deviation from the mean.
  def variance
    return 0.0_f64 if empty?
    self.map { |x| (x - mean) ** 2 }.mean
  end

  def standard_deviation
    Math.sqrt variance
  end
  def std_dev
    standard_deviation
  end
end
