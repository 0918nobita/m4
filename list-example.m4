include(list.m4)dnl
first(A, B, C)
dnl => A
last(A, B, C)
dnl => C
reverse(A, B, C)
dnl => C, B, A
define([add3], [eval($1 + 3)])dnl
map([add3], [1, 2, 3])
dnl => 4, 5, 6
range(1, 3)
dnl => 1, 2, 3
