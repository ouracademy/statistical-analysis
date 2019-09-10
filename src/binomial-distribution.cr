def binomial_distribution(trials : Int32, success_probability : Float)
  n = trials
  p = success_probability

  raise ArgumentError.new("success_probability must be between 0 and 1, success_probability: #{p}") unless 0 <= p  && p <= 1
  raise ArgumentError.new("trials >= 0, trials: #{n}") unless n >= 0

  q = 1 - p

  ->(x : Int32){ n.combination(x) * (p ** x) * (q ** (n - x))}
end
