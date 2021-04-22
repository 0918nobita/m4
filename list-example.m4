include(list.m4)dnl
list_first(A, B, C)
dnl => A
list_last(A, B, C)
dnl => C
list_reverse(A, B, C)
dnl => C, B, A
define([add3], [eval($1 + 3)])dnl
list_map([add3], [1, 2, 3])
dnl => 4, 5, 6
