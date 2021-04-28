define([twice], [strict_indir([$1], strict_indir([$1], $2))])dnl
define([let], [pushdef([$1], [$2])$3[]popdef([$1])])dnl
