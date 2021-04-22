include(syntax.m4)dnl
define([length], [$#])dnl
define([first], [$1])dnl
first(A, B, C)
dnl => A
define([last], [ifelse($#, 1, $1, [last(shift($@))])])dnl
last(A, B, C)
dnl => C
define([reverse], [ifelse($#, 1, $1, [reverse(shift($@)), $1])])dnl
reverse(A, B, C)
dnl => C, B, A
define([map_add3],
  [ifelse(
    $#, 1,
    [eval($1 + 3)],
    [eval($1 + 3), map_add3(shift($@))])])dnl
map_add3(1, 2, 3)
dnl => 4, 5, 6
define([add3], [eval($1 + 3)])dnl
define([map],
  [ifelse(
    eval(length($2) == 1), 1,
    [$1(first($2))],
    [$1(first($2)), map([$1], [shift($2)])])])dnl
map([add3], [1, 2, 3])
dnl => 4, 5, 6
