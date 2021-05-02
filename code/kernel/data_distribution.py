import argparse

import numpy as np
import matplotlib.pyplot as plt
import pickle

from utils import get_data_from_file


TRESHOLD_RATIO = 0.00005
AMBIENTS = ["host", "qemu", "vmware", "virtualbox", "hyperv"]
CPUS = ["amd", "intel"]


def histogram_multiple(xor_values, instruction_values, instruction, mode):
   width = 0.35
   fig, ax = plt.subplots()

   x = np.arange(len(AMBIENTS))
   mins = {}
   for cpu in xor_values:
      mins[cpu] = {}
      for ambient in xor_values[cpu]:
         mins[cpu][ambient] = min(instruction_values[cpu][ambient])/min(xor_values[cpu][ambient])

   bar0 = ax.bar(x - width/2, [round(mins[CPUS[0]][k], 3) for k in mins[CPUS[0]]], width, label=CPUS[0], color='tab:orange')
   bar1 = ax.bar(x + width/2, [round(mins[CPUS[1]][k], 3) for k in mins[CPUS[1]]], width, label=CPUS[1], color='tab:blue')
   
   ax.set_xticks(x)
   ax.set_xticklabels(AMBIENTS)
   ax.legend()

   ax.bar_label(bar0, padding=3)
   ax.bar_label(bar1, padding=3)

   plt.title(f"Ratio between the instructions {instruction.upper()} and XOR in Kernel mode", fontsize=20)
   plt.xlabel("Virtualizer", fontsize=20)
   plt.ylabel("Ratio", fontsize=20)
   plt.yticks(fontsize=15)
   plt.xticks(fontsize=15)

   fig.set_figheight(6)
   fig.set_figwidth(14)
   plt.savefig(f"figures/{instruction}_{mode}.png")

   return mins


def main(instruction, mode):
   xor_values = {}
   instruction_values = {}
   for cpu in CPUS:
      xor_values[cpu] = {}
      instruction_values[cpu] = {}
      for ambient in AMBIENTS:
         xor_values[cpu][ambient], instruction_values[cpu][ambient] = get_data_from_file(f"{ambient}_{cpu}_{instruction}")
         if not instruction_values[cpu][ambient]:
            instruction_values[cpu][ambient] = [0]
            xor_values[cpu][ambient] = [1]
   mins = histogram_multiple(xor_values, instruction_values, instruction, mode)  
   
   with open(f"mins/{instruction}_{mode}", 'wb') as file:
      file.write(pickle.dumps(mins))


if __name__ == '__main__':
   parser = argparse.ArgumentParser()
   parser.add_argument('--instruction', default="cpuid", type=str, help=f"Instruction: one of [cpuid, rtc, lgdt]")
   parser.add_argument('--mode', default="kernel", type=str, help="Mode: one of [kernel, user]")
   args = parser.parse_args()

   main(args.instruction, args.mode)
