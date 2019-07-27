# statistical-analysis

A set of functions for statistical analysis
** Created just for fun 😃

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     statistical-analysis:
       github: ouracademy/statistical-analysis
   ```

2. Run `shards install`

## Usage

See the spec files for more documentation

```crystal
require "statistical-analysis"

# Factorial
5.factorial # Object (OO) way
Math.factorial(5) # Functional (FP) way
```

### Probabilities
```crystal
# Permutation
# In math: n P r or  P(n,r)  
4.permutation(r: 3)    # 24
Math.permutation(4, 3)

# n C r or C(n,r) 
4.combination(r: 3) # 4
Math.combination(4, 3)
```

### Series & Statistics
```crystal
# OO
X = [20, 23, 21, 22]
X.mean # also you can use X.harmonic_mean
X.standard_deviation # or alias X.std_dev

# FP
# if you include the Stats module or else Stats.mean(X)
include Stats
mean(X) # also you can use harmonic_mean(X)
standard_deviation(X) # or alias std_dev(X)
```

### Distributions
```crystal
# Binomial 
x = 2
p = binomial_distribution(trials: 5, success_probability: 0.1)
p.call(x) # approx. 0.0729, note syntax like math: p(x)


# Test if some function is a distribution function
X = [2, 3, 4, 5, 6] # given some discrete sample (X)
DistributionFunction.is?(X){ |x| 5.2551 / x ** 3 } # true
```

## Contributing

1. Fork it (<https://github.com/ouracademy/statistical-analysis/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
