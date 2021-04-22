include(syntax.m4)dnl
define([length], [$#])dnl
define([first], [$1])dnl
define([last], [ifelse($#, 1, $1, [last(shift($@))])])dnl
define([reverse], [ifelse($#, 1, $1, [reverse(shift($@)), $1])])dnl
define([map_add3],
  [ifelse(
    $#, 1,
    [eval($1 + 3)],
    [eval($1 + 3), map_add3(shift($@))])])dnl
define([add3], [eval($1 + 3)])dnl
define([map],
  [ifelse(
    eval(length($2) == 1), 1,
    [$1(first($2))],
    [$1(first($2)), map([$1], [shift($2)])])])dnl
