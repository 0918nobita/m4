include(high-order.m4)dnl
define([add3], [eval($1 + 3)])dnl
define([add6], [twice([add3], $1)])dnl
define([mul4], [let([mul2], [eval(][$][1 * 2)], [twice([mul2], $1)])])dnl
add6(10)
dnl => 16
mul4(3)
dnl => 12
