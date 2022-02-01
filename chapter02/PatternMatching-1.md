# Exercise: PatternMatching-1

Which of the following will match?

```
1) a = [1, 2, 3]            # Matches, a gets bound to whole list
2) a = 4                    # Matches, a gets bound to 4
3) 4 = a                    # Matches, because a is bound to 4 here
4) [a, b] = [ 1, 2, 3]      # Does not match, list length mismatch
5) a = [ [ 1, 2, 3 ] ]      # Matches, a gets bound to whole (nested) list [ [ 1, 2, 3] ]
6) [a] = [ [ 1, 2, 3 ] ]    # Matches, a gets bound to [1, 2, 3]
7) [[a]] = [ [ 1, 2, 3 ] ]  # Does not match, inner list length mismatch
```