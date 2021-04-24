include(syntax.m4)dnl
define([print_list], [ifelse(eval($# > 1), 1, $1
[print_list(shift($@))], $1)])dnl
define([length], [$#])dnl
define([fst], [$1])dnl
define([snd], [$2])dnl
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
    length($2), 1,
    [$1(fst($2))],
    [$1(fst($2)), map([$1], [shift($2)])])])dnl
define([range],
  [ifelse(
    $1, $2,
    $1,
    [ifelse(
      eval($1 < $2), 1,
      $1[, ][range(]eval($1 + 1)[, ]$2[)])])])dnl
