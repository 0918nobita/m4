#!/bin/bash -eu
ninja -v
find ./src -mindepth 1 -maxdepth 1 -type f -name "*.spec.m4" | while read file
do
  name=$(basename $file .spec.m4)
  echo "[${name}]"
  m4 -daeq -E -E -R ./src/base.m4f -I ./src $file
  echo -e "  \033[1;32mSuccess\033[0m"
done
