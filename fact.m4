changequote(`[', `]')dnl
define([fact], [ifelse(eval($1 <= 1), 1, 1, [eval($1 * fact(eval($1 - 1)))])])dnl
[fact(3)] = fact(3)
[fact(4)] = fact(4)
[fact(5)] = fact(5)
