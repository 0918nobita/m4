include(syntax.m4)dnl
define([list_length], [$#])dnl
define([list_first], [$1])dnl
define([list_last],
  [ifelse(
    $#, 1,
    $1,
    [list_last(shift($@))])])dnl
define([list_reverse],
  [ifelse(
    $#, 1,
    $1,
    [list_reverse(shift($@)), $1])])dnl
define([list_map],
  [ifelse(
    eval(list_length($2) == 1), 1,
    [$1(list_first($2))],
    [$1(list_first($2)), list_map([$1], [shift($2)])])])dnl
