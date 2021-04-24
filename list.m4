include(syntax.m4)dnl
define([print_list], [ifelse(eval($# > 1), 1, $1
[print_list(shift($@))], $1)])dnl
define([length], [$#])dnl
define([first], [$1])dnl
define([last],
  [ifelse(
    $#, 1,
    $1,
    [last(shift($@))])])dnl
define([reverse],
  [ifelse(
    $#, 1,
    $1,
    [reverse(shift($@)), $1])])dnl
define([map],
  [ifelse(
    eval(length($2) == 1), 1,
    [$1(first($2))],
    [$1(first($2)), map([$1], [shift($2)])])])dnl
define([range],
  [ifelse(
    eval($1 == $2), 1,
    $1,
    [ifelse(
      eval($1 < $2), 1,
      $1[, ][range(]eval($1 + 1)[, ]$2[)])])])dnl
