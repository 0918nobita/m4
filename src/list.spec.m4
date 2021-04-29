include([testing.m4])dnl
include([list.m4])dnl
assert([length of `empty` is to be 0],
  length(empty), 0)dnl
assert([length of `` is to be 1],
  length(), 1)dnl
assert([length of `5` is to be 1],
  length(5), 1)dnl
assert([length of `5, 6` is to be 2],
  length(5, 6), 2)dnl
assert([length of `5, 6, empty` is to be 3],
  length(5, 6, empty), 3)dnl
assert([tail of `` is to be empty],
  tail(), [empty])dnl
assert([tail of `10` is to be empty],
  tail(10), [empty])dnl
assert([tail of `10, 11` is to be `11`],
  tail(10, 11), [11])dnl
assert([tail of `10, 11, 12` is to be `11, 12`],
  quote(tail(10, 11, 12)), [[11,12]])dnl
assert([fst], fst(A, B), [A])dnl
assert([snd], snd(A, B), [B])dnl
assert([nth(1, _)], nth(1, [A, B, C]), [A])dnl
assert([nth(2, _)], nth(2, [A, B, C]), [B])dnl
assert([nth(3, _)], nth(3, [A, B, C]), [C])dnl
assert([last], last(A, B, C), [C])dnl
assert([reverse], quote(reverse(A, B, C)), [[C,B,A]])dnl
define([add3], [eval($1 + 3)])dnl
assert([map], quote(map([add3], [1, 2, 3])), [[4,5,6]])dnl
assert([range], quote(range(1, 3)), [[1,2,3]])dnl
