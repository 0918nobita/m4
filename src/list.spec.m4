include([testing.m4])dnl
include([list.m4])dnl
assert([length of `empty` is to be 0],
  list_length(empty), 0)dnl
assert([length of `` is to be 1],
  list_length(), 1)dnl
assert([length of `5` is to be 1],
  list_length(5), 1)dnl
assert([length of `5, 6` is to be 2],
  list_length(5, 6), 2)dnl
assert([length of `5, 6, empty` is to be 3],
  list_length(5, 6, empty), 3)dnl
assert([tail of `` is to be empty],
  list_tail(), [empty])dnl
assert([tail of `10` is to be empty],
  list_tail(10), [empty])dnl
assert([tail of `10, 11` is to be `11`],
  list_tail(10, 11), [11])dnl
assert([tail of `10, 11, 12` is to be `11, 12`],
  quote(list_tail(10, 11, 12)), [[11,12]])dnl
assert([fst], list_fst(A, B), [A])dnl
assert([snd], list_snd(A, B), [B])dnl
assert([nth(1, _)], list_nth(1, [A, B, C]), [A])dnl
assert([nth(2, _)], list_nth(2, [A, B, C]), [B])dnl
assert([nth(3, _)], list_nth(3, [A, B, C]), [C])dnl
assert([last], list_last(A, B, C), [C])dnl
assert([reverse], quote(list_reverse(A, B, C)), [[C,B,A]])dnl
define([add3], [eval($1 + 3)])dnl
assert([map], quote(list_map([add3], [1, 2, 3])), [[4,5,6]])dnl
assert([range], quote(list_range(1, 3)), [[1,2,3]])dnl
