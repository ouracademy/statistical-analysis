require "./factorial"

module Math
  def permutation(n, r)
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
