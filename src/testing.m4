define([assert],
  [ifelse(
    [$2], [$3],
    [],
    [failwith(__program__:__file__:__line__: [assertion "[$1]" failed])])])dnl
