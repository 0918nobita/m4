include(base.m4)dnl
define([fst],
  [ifelse(
    [$@], [[empty]],
    [failwith([fst: list is empty])],
    [$1])])dnl
define([snd],
  [ifelse(
    eval($# >= 2), 1,
    [$2],
    [failwith([snd: list index out of range])])])dnl
define([length],
  [ifelse([$@], [[empty]], 0, $#)])dnl
define([nth],
  [ifelse(
    [$2], [empty],
      [failwith([nth: list is empty])],
    eval(length($2) < $1), 1,
      [failwith([nth: list index out of range])],
    eval($1 >= 1), 1,
      [pushdef([_nth], [$$1])_nth($2)[]popdef([_nth])],
    [failwith([nth: invalid index])])])dnl
define([tail],
  [pushdef([_length], length($@))dnl
[]ifelse(
    _length, 0,
      [failwith([tail: list is empty])],
    _length, 1,
      [empty],
    [shift($@)])[]popdef([_length])])dnl
dnl define([print_list],
dnl   [ifelse(
dnl     [$@], [[empty]],
dnl       [],
dnl     eval($# > 1), 1,
dnl       [$1
dnl print_list(shift($@))],
dnl     [$1])])dnl
