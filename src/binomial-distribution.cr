def binomial_distribution(trials : Int32, success_probability : Float)
  n = trials
  p = success_probability
  q = 1 - p

  ->(x : Int32){ n.combination(x) * (p ** x) * (q ** (n - x))}
end
