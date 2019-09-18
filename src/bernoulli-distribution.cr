require "./binomial-distribution"

def bernoulli_distribution(success_probability : Float)
  binomial_distribution(1, success_probability)
end
