#!/bin/sh

BINARY_NAME=main

make &> /dev/null
taskset -c 0 ./$BINARY_NAME $1 > results/$2
