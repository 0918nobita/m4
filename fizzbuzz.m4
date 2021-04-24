include(list.m4)dnl
define([fizzbuzz_mapper],
  [ifelse(
    eval($1 % 15), 0, $1 <- FizzBuzz,
    eval($1 % 5),  0, $1 <- Buzz,
    eval($1 % 3),  0, $1 <- Fizz,
                      $1)])dnl
print_list(map([fizzbuzz_mapper], [range(1, 30)]))
