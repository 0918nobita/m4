namespace([list],
  [define([self::print_list],
    [ifelse(
      eval($# > 1), 1,
      $1
[self::print_list(shift($@))],
      $1)])dnl
dnl
dnl length(list: any list) -> int
[]define([self::length],
  [ifelse(
    [$@], [[empty]],
    0,
    $#)])dnl
dnl
dnl tail(list: any list) requires(length(list) > 0) -> any
[]define([self::tail],
    [pushdef([_length], self::length($@))dnl
[][]ifelse(
      _length, 0,
        [failwith([self::tail: list is empty])],
      _length, 1,
        [empty],
      [pushdef([_tail], [shift($@)])dnl
[][][]ifelse(
        self::length(_tail), 0,
        [[[empty]]],
        [_tail])[]dnl
[][][]popdef([_tail])])[]dnl
[][]popdef([_length])])dnl
dnl
dnl fst(list: any list) requires(length(list) > 0) -> any
[]define([self::fst],
    [ifelse(
      [$@], [[empty]],
      [failwith([self::fst: list is empty])],
      [$1])])dnl
dnl
dnl snd(list: any list) requires(length(list) >= 2) -> any
[]define([self::snd],
    [ifelse(
      eval($# >= 2), 1,
      [$2],
      [failwith([self::snd: list index out of range])])])dnl
dnl
dnl nth(index: int, list: any list) requires(length(list) > 0 && length(list) < index && length >= 1) -> any
[]define([self::nth],
    [ifelse(
      [$2], [empty],
        [failwith([self::nth: list is empty])],
      eval(self::length($2) < $1), 1,
        [failwith([self::nth: list index out of range])],
      eval($1 >= 1), 1,
        [pushdef([_nth], [$$1])_nth($2)[]popdef([_nth])],
      [failwith([self::nth: invalid index])])])dnl
dnl
dnl last(list: any list) requires(length(list) > 0) -> any
[]define([self::last],
    [pushdef([_length], self::length($@))dnl
[][]ifelse(
      _length, 0,
        [failwith([self::last: list is empty])],
      _length, 1,
        [self::fst($@)],
      [self::last(self::tail($@))])[]dnl
[][]popdef([_length])])dnl
dnl
dnl add(item: any, list: any list) -> any list
[]define([self::add],
  [ifelse(
    [$2], [empty],
    [$1],
    [$2, $1])])dnl
dnl
dnl rev(list: any list) -> any list
[]define([self::rev],
    [ifelse(
      $#, 1,
      [[$1]],
      [self::rev(self::tail($@)), [$1]])])dnl
dnl
dnl map(mapping: macro_name, list: any list) -> any list
[]define([self::map],
    [ifelse(
      self::length($2), 0,
        [[empty]],
      self::length($2), 1,
        [indir([$1], self::fst($2))],
      [indir([$1], self::fst($2)), self::map([$1], [self::tail($2)])])])dnl
dnl
dnl range(x: int, y: int) -> int list
[]define([self::range],
    [ifelse(
      assert_numeric($1)$1, assert_numeric($2)$2,
      $1,
      [ifelse(
        eval($1 < $2), 1,
        $1[, ][self::range(]incr($1)[, ]$2[)],
        [empty])])])])dnl
