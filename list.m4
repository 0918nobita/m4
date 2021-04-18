changequote(`[', `]')dnl
define([foo], [[bar]])dnl
define([bar], [[baz]])dnl
foo
bar
define([last], [ifelse($#, 1, $1, [last(shift($@))])])dnl
last(A, B, C)
define([hoge], [1])dnl
hoge
pushdef([hoge], [2])dnl
hoge
popdef([hoge])dnl
hoge
