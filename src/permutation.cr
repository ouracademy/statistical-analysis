require "./factorial"

module Math
  def permutation(n, k)
    return n.factorial / (n - k).factorial
  end

  def combination(n, r)
    return n.permutation(r) / r.factorial
  end
end

struct Int32
  def permutation(k)
    Math.permutation(self, k)
  end

  def combination(r)
    Math.combination(self, r)
  end
end
