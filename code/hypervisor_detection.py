import os
import argparse
import pickle
import uuid

from utils import get_data_from_file


AMBIENTS = ["host", "qemu", "vmware", "virtualbox", "hyperv"]
ERROR = 0.1


def main(instruction, mode, cpu, number_runs, verbose=False):
   mins = {}

   if mode == "kernel":
      os.system(f"cd {mode}; bash compile_for_instruction.sh {instruction} {number_runs}")
      xor_values, instruction_values = get_data_from_file('/proc/cicles_counter', 'kernel')
   elif mode == "user":
      file = uuid.uuid4()
      os.system(f"cd {mode}; bash run.sh {number_runs} {file}.txt")
      xor_values, instruction_values = get_data_from_file(f"{mode}/results/{file}", 'user')
      os.system(f"rm {mode}/results/{file}.txt")

   with open(f"mins/{instruction}_{mode}", 'rb') as file:
      mins = pickle.loads(file.read())

   min_measured = min(instruction_values)/min(xor_values)

   if verbose:
      print("\n\n\n*****************************************************************************************")
      print(f"{'Minimum obtained on this execution:':50s}{min_measured:3.7f}\n")

   result = ''
   for ambient in mins[cpu]:
      current_distance = abs(min_measured - mins[cpu][ambient])

      if verbose:
         to_print = f"Distance to resuts from <{ambient}>:"
         print(f"{to_print:50s}{current_distance:3.7f}", end='\t')
      
      if result not in mins[cpu] or current_distance < abs(min_measured - mins[cpu][result]):
         result = ambient

         if verbose:
            print(f"{'HIT':>10}", end='')

      if verbose:
         print()
   
   if verbose:
      print("*****************************************************************************************\n\n\n")

   print(f"Ambient detected using the data from the {cpu} CPU with the instruction {instruction.upper()} in {mode} mode:\t{result}")


if __name__ == '__main__':
   parser = argparse.ArgumentParser()
   parser.add_argument('--instruction', default="cpuid", type=str, help=f"Instruction: one of [cpuid, rtc, lgdt]")
   parser.add_argument('--mode', default="user", type=str, help="Mode: one of [kernel, user]")
   parser.add_argument('--cpu', default="amd", type=str, help="Use the data obtained from the given CPU brand: one of [amd, intel]")
   parser.add_argument('--runs', default=10000, type=int, help="Number of times to run the instructions")
   parser.add_argument('--verbose', default=False, type=bool, help="All output")
   args = parser.parse_args()

   main(args.instruction, args.mode, args.cpu, args.runs, args.verbose)
