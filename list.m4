changequote([, ])dnl
define([last], [ifelse($#, 1, $1, [last(shift($@))])])dnl
last(A, B, C)
