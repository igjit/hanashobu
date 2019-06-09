#!/bin/bash

file=$1

cat "$file" |
    cut -d\> -f2 |
    cut -d\< -f1 |
    sed 'y/０１２３４５６７８９/0123456789/' |
    sed 'y/　/,/' |
    sed 's/輪//' |
    cut -d, -f1,3 |
    uniq
