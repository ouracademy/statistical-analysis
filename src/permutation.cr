require "./factorial"

module Math
  def permutation(n, r)
    raise ArgumentError.new("n ≥ r ≥ 0") unless n >= r && r >= 0
    return n.factorial / (n - r).factorial
  end

  def combination(n, r)
    return n.permutation(r) / r.factorial
  end
end

struct Int32
  def permutation(r)
    Math.permutation(self, r)
  end

  def combination(r)
    Math.combination(self, r)
  end
end
