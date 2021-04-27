#!/bin/sh


MODULE_NAME=cicles_counter
INSTRUCTIONS=("cpuid" "rtc" "lgdt" "xor")

# build and install the kernel module
make &> /dev/null
sudo rmmod cicles_counter &> /dev/null
sudo insmod cicles_counter.ko

# tell the module how many times to run the instruction
echo "echo $1 > /sys/module/cicles_counter/parameters/number_runs" | sudo bash

for i in $(seq 0 $((${#INSTRUCTIONS[@]} - 1))); do
   echo "************************************************************************"
   echo "Running for the instruction <${INSTRUCTIONS[i]}> (id=$i)"
   echo "echo $i > /sys/module/cicles_counter/parameters/instruction" | sudo bash
   taskset -c 0 cat /proc/$MODULE_NAME > results/$2_${INSTRUCTIONS[i]}

   python3 interpret_results.py --file $2_${INSTRUCTIONS[i]}
done
