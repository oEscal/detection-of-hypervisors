#!/bin/sh

BINARY_NAME=main

echo $1 > $2

for i in $(seq 1 $1); do
   taskset -c 0 ./$BINARY_NAME >> $2
done
