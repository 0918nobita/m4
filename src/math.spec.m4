include([testing.m4])dnl
include([math.m4])dnl
assert([add], add(2, 3, 4),  9)dnl
assert([sub], sub(10, 1, 2), 7)dnl
assert([fact(3) = 6],   fact(3), 6)dnl
assert([fact(4) = 24],  fact(4), 24)dnl
assert([fact(5) = 120], fact(5), 120)dnl
