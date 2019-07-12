module Math
  #  n! = 1 x 2 x 3... n
  def factorial(n)
    n == 0 ? 1 : n * factorial(n - 1)
  end
end

struct Int32
  def factorial
    Math.factorial(self)
  end
end
