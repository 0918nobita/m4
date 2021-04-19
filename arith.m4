changequote([, ])dnl
define([add], [eval(patsubst([$@], [,], +))])dnl
define([sub], [eval(patsubst([$@], [,], -))])dnl
add(2, 3, 4)
sub(10, 1, 2)
