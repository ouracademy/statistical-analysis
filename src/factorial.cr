module Math
  # A factorial(N) = 1x2x3x...xN
  def factorial
    return factorial(self)
  end

  def factorial(n)
    return n == 0 ? 1 : n * factorial(n - 1)
  end
end

abstract struct Number
  include Math
end
