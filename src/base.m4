changequote([, ])dnl
define([quote], [[[$*]]])dnl
define([failwith], [errprint([$1]
)m4exit(1)])dnl
define([ignore], [])dnl
define([assert_numeric], [ignore(format([%d], $1))])dnl
define([ns],
  [ifdef([__current_namespace__],
    [__current_namespace__[]_$1],
    [failwith([ns: invalid use of "ns"])])])dnl
define([namespace],
  [ifdef([__namespace_$1_included__],
    [],
    [define([__namespace_$1_included__])define([__current_namespace__], [$1])$2[]undefine([__current_namespace__])])])dnl
