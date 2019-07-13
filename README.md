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

# Permutation
# In math: n P r or  P(n,r)  
4.permutation(r: 3)    # 24
Math.permutation(4, 3)

# n C r or C(n,r) 
4.combination(r: 3) # 4
Math.combination(4, 3)

```


## Contributing

1. Fork it (<https://github.com/ouracademy/statistical-analysis/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
