changequote([, ])dnl
define([failwith], [errprint([$1]
)m4exit(1)])dnl
define([ignore], [])dnl
define([assert_numeric], [ignore(format([%d], $1))])dnl
