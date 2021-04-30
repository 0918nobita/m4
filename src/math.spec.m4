include([testing.m4])dnl
include([math.m4])dnl
assert([add], math_add(2, 3, 4),  9)dnl
assert([sub], math_sub(10, 1, 2), 7)dnl
assert([fact(3) = 6],   math_fact(3), 6)dnl
assert([fact(4) = 24],  math_fact(4), 24)dnl
assert([fact(5) = 120], math_fact(5), 120)dnl
