#!/bin/sh


MODULE_NAME=cicles_counter
INSTRUCTIONS=("cpuid" "rtc" "lgdt")


for i in $(seq 0 $((${#INSTRUCTIONS[@]} - 1))); do
   bash compile_for_instruction.sh ${INSTRUCTIONS[i]} $1

   echo "************************************************************************"
   echo "Running for <${INSTRUCTIONS[i]}>"
   taskset -c 0 cat /proc/$MODULE_NAME > results/$2_${INSTRUCTIONS[i]}

   python3 interpret_results.py --file $2_${INSTRUCTIONS[i]}
done
