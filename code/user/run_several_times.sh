#!/bin/sh

BINARY_NAME=main

taskset -c 0 ./$BINARY_NAME $1 >> $2
