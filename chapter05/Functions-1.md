# Exercise: Functions-1

Go into IEx. Create and run the functions that do the following:

## 1) ``list_concat.([:a, :b], [:c, :d]) #=> [:a, :b, :c, :d]``
```elixir
list_concat = fn ([a, b], [c, d]) -> [a, b, c, d] end
```

## 2) ``sum.(1, 2, 3) #=> 6``
```elixir
sum = fn (fst, snd, trd) -> fst + snd + trd end
```

## 3) ``pair_tuple_to_list.( { 1234, 5678 } ) #=> [ 1234, 5678 ]``
```elixir
pair_tuple_to_list = fn { a, b } -> [ a, b ] end
```