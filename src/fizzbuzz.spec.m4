include([fizzbuzz.m4])dnl
assert([FizzBuzz],
  quote(fizzbuzz(1, 15)),
  [[1,2,3 <- Fizz,4,5 <- Buzz,6 <- Fizz,7,8,9 <- Fizz,10 <- Buzz,11,12 <- Fizz,13,14,15 <- FizzBuzz]])dnl
