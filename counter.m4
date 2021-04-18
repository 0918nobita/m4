changequote(`[', `]')dnl
define([counter], [0])dnl
define([inc], [define([counter], eval(counter + 1))counter])dnl
define([dec], [define([counter], eval(counter - 1))counter])dnl
inc
inc
inc
dec
