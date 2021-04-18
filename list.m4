changequote(`[', `]')dnl
define([last], [ifelse($#, 1, $1, [last(shift($@))])])dnl
last(foo, bar, baz)
define([hoge], [1])dnl
hoge
pushdef([hoge], [2])dnl
hoge
popdef([hoge])dnl
hoge
