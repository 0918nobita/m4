include(list.m4)dnl
define([list_a], [A, B, C])dnl
fst(list_a)
dnl => A
last(list_a)
dnl => C
nth(1, [list_a])
dnl => A
nth(2, [list_a])
dnl => B
nth(3, [list_a])
dnl => C
reverse(list_a)
dnl => C, B, A
define([add3], [eval($1 + 3)])dnl
map([add3], [1, 2, 3])
dnl => 4, 5, 6
range(1, 3)
dnl => 1, 2, 3
