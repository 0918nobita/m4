namespace([hoge],
  [define([self::add3], [eval($1 + 3)])])dnl
assert([include guard],
  ifdef([__namespace_hoge_included__], 1, 0), 1)dnl
assert([namespace member],
  hoge_add3(7), 10)dnl
