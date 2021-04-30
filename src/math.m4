namespace([math],
  [define([self::add],
    [eval(patsubst([$@], [,], +))])dnl
[]define([self::sub],
    [eval(patsubst([$@], [,], -))])dnl
[]define([self::fact],
    [ifelse(
      eval($1 <= 1), 1,
      1,
      [eval($1 * self::fact(eval($1 - 1)))])])])dnl
