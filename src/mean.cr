module Stats
  extend self
  def mean(enumerable : Enumerable(Number))
    return enumerable.mean
  end
end

module Enumerable(Number)
  def mean
    return 0.0_f64 if empty?
    sum.to_f64 / size.to_f64
  end
end
