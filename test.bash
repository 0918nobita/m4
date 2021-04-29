#!/bin/bash -eu
find ./test -mindepth 1 -maxdepth 1 -type f -name "*.m4" | while read file
do
  name=$(basename $file .m4)
  echo "[${name}]"
  m4 -daeq -E -E -I ./lib $file |& cmp test/__snapshots__/$name.snap
  echo -e "  \033[1;32mSuccess\033[0m"
done
