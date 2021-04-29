include([testing.m4])dnl
define([counter], [0])dnl
define([inc], [define([counter], eval(counter + 1))counter])dnl
define([dec], [define([counter], eval(counter - 1))counter])dnl
assert([counter 1], inc, 1)dnl
assert([counter 2], inc, 2)dnl
assert([counter 3], inc, 3)dnl
assert([counter 4], dec, 2)dnl
