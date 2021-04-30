include([list.m4])dnl
namespace([dict],
  [define([self::empty], [empty,empty])dnl
[]define([self::add],
    [quote(list_add($1, list_fst($3))),dnl
[][]quote(list_add($2, list_snd($3)))])])dnl
