define([print_list], [ifelse(eval($# > 1), 1, $1
[print_list(shift($@))], $1)])dnl
define([length],
  [ifelse([$@], [[empty]], 0, $#)])dnl
define([tail],
  [pushdef([_length], length($@))dnl
[]ifelse(
    _length, 0,
      [failwith([tail: list is empty])],
    _length, 1,
      [empty],
    [pushdef([_tail], [shift($@)])dnl
[][]ifelse(
      length(_tail), 0,
      [[[empty]]],
      [_tail])[]dnl
[][]popdef([_tail])])[]dnl
[]popdef([_length])])dnl
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
define([nth],
  [ifelse(
    [$2], [empty],
      [failwith([nth: list is empty])],
    eval(length($2) < $1), 1,
      [failwith([nth: list index out of range])],
    eval($1 >= 1), 1,
      [pushdef([_nth], [$$1])_nth($2)[]popdef([_nth])],
    [failwith([nth: invalid index])])])dnl
define([last],
  [pushdef([_length], length($@))dnl
[]ifelse(
    _length, 0,
      [failwith([last: list is empty])],
    _length, 1,
      [fst($@)],
    [last(tail($@))])[]dnl
[]popdef([_length])])dnl
define([reverse],
  [ifelse(
    $#, 1,
    [[$1]],
    [reverse(tail($@)), [$1]])])dnl
define([map],
  [ifelse(
    length($2), 0,
      [[empty]],
    length($2), 1,
      [indir([$1], fst($2))],
    [indir([$1], fst($2)), map([$1], [tail($2)])])])dnl
define([range],
  [ifelse(
    assert_numeric($1)$1, assert_numeric($2)$2,
    $1,
    [ifelse(
      eval($1 < $2), 1,
      $1[, ][range(]incr($1)[, ]$2[)],
      [empty])])])dnl
