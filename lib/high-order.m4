dnl (マクロ呼び出しが2回発生するようにネストさせる)
define([twice], [indir([$1], indir([$1], $2))])dnl
define([add3], [eval($1 + 3)])dnl
define([add6], [twice([add3], $1)])dnl
dnl (let 束縛)
define([let], [pushdef([$1], [$2])$3[]popdef([$1])])dnl
dnl (局所的に定義した mul2 マクロを用いて、mul4 マクロを定義する)
define([mul4], [let([mul2], [eval(][$][1 * 2)], [twice([mul2], $1)])])dnl
