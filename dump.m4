include(syntax.m4)dnl
define([foo], [bar $#])dnl
foo(A, B, C)
dumpdef([foo])
