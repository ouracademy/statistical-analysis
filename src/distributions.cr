class DistributionFunction
  def self.is?(x : Array, delta = 0.01, &p)
    x.all? { |xi| (yield xi) >= 0 } &&
      Math.equals(x.sum { |xi| yield xi }, 1, delta)
  end
end

module Math
  def equals(n1, n2, delta)
    (n1 - n2).abs <= delta
  end
end
