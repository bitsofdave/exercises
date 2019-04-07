# Prime Number Multiplication Table

# Objective
Print out a multiplication table of the first 10 primary numbers.

# Description
This program accepts an arg N, where N is the first N prime numbers to find, and
then displays the multiplication table for them.

It uses a basic prime number generation algorithm running in O(m/2) and creates
the multiplication table for them in O(N^2) where N is the number of prime numbers.

Notes:
1. Tested to be working up to 1000 primes. Does not work in reasonable time for 10000.
1. There are better prime number generation algorithms that could be used should
this program need to scale.

# Usage
To run for 10:

`ruby prime_multiplication_table.rb 10`

```
$ ruby prime_multiplication_table.rb 10
       2   3   5   7  11  13  17  19  23  29
   2   4   6  10  14  22  26  34  38  46  58
   3   6   9  15  21  33  39  51  57  69  87
   5  10  15  25  35  55  65  85  95 115 145
   7  14  21  35  49  77  91 119 133 161 203
  11  22  33  55  77 121 143 187 209 253 319
  13  26  39  65  91 143 169 221 247 299 377
  17  34  51  85 119 187 221 289 323 391 493
  19  38  57  95 133 209 247 323 361 437 551
  23  46  69 115 161 253 299 391 437 529 667
  29  58  87 145 203 319 377 493 551 667 841
```

`ruby prime_multiplication_table_test.rb`
```
$ ruby prime_multiplication_table_test.rb
Run options: --seed 20327

# Running:

.................

Finished in 0.008773s, 1937.7636 runs/s, 1937.7636 assertions/s.

17 runs, 17 assertions, 0 failures, 0 errors, 0 skips
```