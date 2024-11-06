#!/bin/sh -e

for f in ./*; do
    [ -d $f ] || continue
    printf '%s\n' '-- version --' "${f##*-}" >> "$f.txtar"
done
