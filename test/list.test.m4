include(list.m4)dnl
length(empty)
dnl => 0
length()
dnl => 1
length(5)
dnl => 1
length(5, 6)
dnl => 2
length(5, 6, empty)
dnl => 3
tail()
dnl => empty
tail(10)
dnl => empty
tail(10, 11)
dnl => 11
tail(10, 11, 12)
dnl => 11,12
define([list_a], [A, B, C])dnl
fst(list_a)
dnl => A
snd(list_a)
dnl => B
nth(1, [list_a])
dnl => A
nth(2, [list_a])
dnl => B
nth(3, [list_a])
dnl => C
last(list_a)
dnl => C
reverse(list_a)
dnl => C, B, A
define([add3], [eval($1 + 3)])dnl
map([add3], [1, 2, 3])
dnl => 4, 5, 6
range(1, 3)
dnl => 1, 2, 3
