changequote([, ])dnl
define([failwith], [errprint([$1]
)m4exit(1)])dnl
define([strict_indir],
  [ifdef(
    [$1],
    [indir([$1], shift($@))],
    [failwith([strict_indir: undefined macro])])])dnl
