include([dict.m4])dnl
define([apply], [pushdef([_anon], [$1])_anon($2)[]popdef([_anon])])dnl
define([add], [[eval(]$1 + $[1)]])dnl
assert([apply], apply(add(3), 4), 7)dnl
