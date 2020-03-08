module Stats
  extend self

  def mean(enumerable : Enumerable(Number))
    enumerable.mean
  end

  def harmonic_mean(enumerable : Enumerable(Number))
    enumerable.harmonic_mean
  end
end

module Enumerable(Number)
  def mean
    return 0.0_f64 if empty?
    sum.to_f64 / size.to_f64
  end

  def harmonic_mean
    return 0.0_f64 if empty?
    size.to_f64 / map { |x| 1.0 / x }.sum
  end
end
