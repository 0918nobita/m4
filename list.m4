define(`last',`ifelse($#,1,$1,`last(shift($@))')')dnl
last(foo,bar,baz)
