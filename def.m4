include(syntax.m4)dnl
define([hoge], [1])dnl
hoge
pushdef([hoge], [2])dnl
hoge
popdef([hoge])dnl
hoge
