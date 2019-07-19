#!/bin/bash
d_old=""
for d in $1*
do
  if [ -n "$d_old" ]
  then
    diff -c "$d_old" "$d"
  fi
  d_old="$d"
done
