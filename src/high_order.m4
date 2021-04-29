define([twice], [indir([$1], indir([$1], $2))])dnl
define([let], [pushdef([$1], [$2])$3[]popdef([$1])])dnl
