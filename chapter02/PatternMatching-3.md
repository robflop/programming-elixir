# Exercise: PatternMatching-2

The variable a is bound to the value 2. Which of the following will match?

```
1) [a, b, a] = [ 1, 2, 3 ]  # Does not match, a bound to 1 with the first element, does not match third element (3)
2) [a, b, a] = [ 1, 1, 2 ]  # Does not match, a bound to 1 with the first element, does not match third element (2)
3) a = 1                    # Matches, a bound to 1
4) ^a = 2                   # Does not match, a currently bound to 1 and pinned, thus no match with 2
5) ^a = 1                   # Matches, a currently bound to 1 and pinned
6) ^a = 2 - a               # Matches, RHS a gets evaluated to 1 so whole RHS is 1, a currently bound to 1 and pinned
```