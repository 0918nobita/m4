changequote([, ])dnl
define([quote], [[[$*]]])dnl
define([failwith], [errprint([$1]
)m4exit(1)])dnl
define([ignore], [])dnl
define([assert_numeric], [ignore(format([%d], $1))])dnl
define([namespace],
  [ifdef([__namespace_$1_included__],
    [],
    [define([__namespace_$1_included__])patsubst([$2], [self::], [$1_])])])dnl
