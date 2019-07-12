require "./factorial"

module Math
  def permutation(n, k)
    return n.factorial / (n - k).factorial
  end
end

struct Int32
  def permutation(k)
    return Math.permutation(self, k)
  end
end
