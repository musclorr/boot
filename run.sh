#!/bin/sh

[[ -f /.installed ]] && exit 0
touch /.installed
[[ ! -f /.installed ]] && exit 1


echo "=== installing ==="
