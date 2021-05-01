#!/bin/sh


MODULE_NAME=cicles_counter
INSTRUCTIONS=("cpuid" "rtc" "lgdt")
MACROS=("RUN_CPUID" "RUN_RTC" "RUN_LGDT")


for i in $(seq 0 $((${#INSTRUCTIONS[@]} - 1))); do
   # clean, build and install the kernel module
   make clean &> /dev/null
   make &> /dev/null
   sudo rmmod $MODULE_NAME &> /dev/null
   sudo insmod $MODULE_NAME.ko

   # tell the module how many times to run the instruction
   echo "echo $1 > /sys/module/$MODULE_NAME/parameters/number_runs" | sudo bash

   echo "************************************************************************"
   echo "Running for <${INSTRUCTIONS[i]}>"
   echo "#define ${MACROS[i]} 1" > to_run.h
   taskset -c 0 cat /proc/$MODULE_NAME > results/$2_${INSTRUCTIONS[i]}

   python3 interpret_results.py --file $2_${INSTRUCTIONS[i]}
done
