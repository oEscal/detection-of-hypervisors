#!/bin/sh


MODULE_NAME=cicles_counter

declare -A instructions=(["cpuid"]="RUN_CPUID" ["rtc"]="RUN_RTC" ["lgdt"]="RUN_LGDT")

echo "#define ${instructions[$1]} 1" > to_run.h

# clean, build and install the kernel module
make clean &> /dev/null
make &> /dev/null
sudo rmmod $MODULE_NAME &> /dev/null
sudo insmod $MODULE_NAME.ko

# tell the module how many times to run the instruction
echo "echo $2 > /sys/module/$MODULE_NAME/parameters/number_runs" | sudo bash
