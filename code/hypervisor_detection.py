import os
import argparse
import pickle
import uuid

from utils import get_data_from_file


AMBIENTS = ["host", "qemu", "vmware", "virtualbox", "hyperv"]


def main(instruction, mode, cpu, number_runs):
   mins = {}

   if mode == "kernel":
      os.system(f"cd {mode}; bash compile_for_instruction.sh {instruction} {number_runs}")
      xor_values, instruction_values = get_data_from_file('/proc/cicles_counter', 'kernel')
   elif mode == "user":
      file = uuid.uuid4()
      os.system(f"cd {mode}; make &> /dev/null; ./main {number_runs} > {file}.txt")
      xor_values, instruction_values = get_data_from_file(f"{mode}/{file}", 'user')
      os.system(f"rm {mode}/{file}.txt")

   with open(f"mins/{instruction}_{mode}", 'rb') as file:
      mins = pickle.loads(file.read())

   min_measured = min(instruction_values)/min(xor_values)

   result = list(mins[cpu].keys())[0]
   for ambient in mins[cpu]:
      if min_measured >= mins[cpu][ambient] and (min_measured - mins[cpu][ambient]) < (min_measured - mins[cpu][result]):
         result = ambient

   print(f"Ambient detected using the data from the CPU {cpu} with the instruction {instruction.upper()} in {mode} mode: <{result}>")


if __name__ == '__main__':
   parser = argparse.ArgumentParser()
   parser.add_argument('--instruction', default="cpuid", type=str, help=f"Instruction: one of [cpuid, rtc, lgdt]")
   parser.add_argument('--mode', default="kernel", type=str, help="Mode: one of [kernel, user]")
   parser.add_argument('--cpu', default="amd", type=str, help="Use the data obtained from the given CPU brand: one of [amd, intel]")
   parser.add_argument('--runs', default=10000, type=int, help="Number of times to run the instructions")
   args = parser.parse_args()

   main(args.instruction, args.mode, args.cpu, args.runs)
