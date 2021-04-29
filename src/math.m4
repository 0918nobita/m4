define([add], [eval(patsubst([$@], [,], +))])dnl
define([sub], [eval(patsubst([$@], [,], -))])dnl
define([fact],
  [ifelse(
    eval($1 <= 1), 1,
    1,
    [eval($1 * fact(eval($1 - 1)))])])dnl
