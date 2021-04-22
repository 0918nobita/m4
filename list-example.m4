include(list.m4)dnl
first(A, B, C)
dnl => A
last(A, B, C)
dnl => C
reverse(A, B, C)
dnl => C, B, A
map_add3(1, 2, 3)
dnl => 4, 5, 6
map([add3], [1, 2, 3])
dnl => 4, 5, 6
