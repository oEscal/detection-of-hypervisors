import argparse

import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm, boxcox, binned_statistic

from utils import get_data_from_file


TRESHOLD_RATIO = 0.00005
AMBIENTS = ["host", "qemu", "vmware", "virtualbox"]
INSTRUCTION = "cpuid"
CPUS = ["amd", "intel"]


def boxcox_transformation(data, _lambda):
   return (np.power(data, _lambda) - 1)/_lambda


def create_histogram(values, ambient):
   plt.clf()
   treshold = 1 # TRESHOLD_RATIO * len(values)

   print(f"Minimum of clock cycles: {min(values)}")
   print(f"Number of times that we obtained this value: {values.count(min(values))}")

   print(f"\n\n\nMaximum of clock cycles: {max(values)}")
   print(f"Number of times that we obtained this value: {values.count(max(values))}")

   values_set = set(values)
   values_in_treshold = []
   values_not_in_treshold = []
   for v in values_set:
      if values.count(v) > treshold:
         values_in_treshold.append(v)
      else:
         values_not_in_treshold.append(v)

   # values_filtered = []
   # for v in values:
   #    if v in values_in_treshold:
   #       values_filtered.append(v)   

   mean, std = np.mean(values), np.std(values)
   fig = plt.figure()
   plt.hist(values, bins=len(values_set), density=True)
   plt.xlim(0, 300)
   xmin, xmax = plt.xlim()
   x = np.linspace(xmin, xmax, 100)
   y = norm.pdf(x, mean, std)
   plt.plot(x, y)

   plt.title(f"Histogram of the number of clock cycles for the instruction '{INSTRUCTION}' on the '{ambient}' ambient\n", 
      fontsize=20)
   plt.xlabel("Number of clock cycles", fontsize=20)
   plt.ylabel("Ratio", fontsize=20)
   plt.yticks(fontsize=15)

   fig.set_figheight(6)
   fig.set_figwidth(14)
   plt.savefig(f"{ambient}_{CPU}_{INSTRUCTION}.png")


   # with box-cox

   plt.clf()
   fitted_data, fitted_lambda = boxcox(values)
   mean_bc, std_bc = norm.fit(boxcox_transformation(values, fitted_lambda))

   fig = plt.figure()
   plt.hist(fitted_data, bins=len(set(fitted_data)), density=True)
   xmin, xmax = plt.xlim()
   x = np.linspace(xmin, xmax, 100)
   y = norm.pdf(x, mean_bc, std_bc)
   plt.plot(x, y)

   plt.title(f"Histogram of the number of clock cycles for the instruction '{INSTRUCTION}' on the '{ambient}' ambient\n(data transformed using box-cox)", 
      fontsize=20)
   plt.xlabel("Number of clock cycles", fontsize=20)
   plt.ylabel("Box-cox transformed of the ratio", fontsize=20)
   plt.yticks(fontsize=15)

   fig.set_figheight(6)
   fig.set_figwidth(14)
   plt.savefig(f"{ambient}_{CPU}_{INSTRUCTION}_box.png")

   return min(values_set), mean, std, fitted_lambda, mean_bc, std_bc


def histogram_multiple(xor_values, instruction_values):
   width = 0.35
   x = np.arange(len(AMBIENTS))
   plt.bar(x - width/2, 
      [min(instruction_values[CPUS[0]][k])/min(xor_values[CPUS[0]][k]) for k in xor_values[CPUS[0]]], width, label=CPUS[0])
   plt.bar(x + width/2, 
      [min(instruction_values[CPUS[1]][k])/min(xor_values[CPUS[1]][k]) for k in xor_values[CPUS[1]]], width, label=CPUS[1])
   plt.axes().set_xticks(x)
   plt.axes().set_xticklabels(AMBIENTS)
   plt.show()


def main():
   xor_values = {}
   instruction_values = {}
   for cpu in CPUS:
      xor_values[cpu] = {}
      instruction_values[cpu] = {}
      for ambient in AMBIENTS:
         xor_values[cpu][ambient], instruction_values[cpu][ambient] = get_data_from_file(f"{ambient}_{cpu}_{INSTRUCTION}")
   histogram_multiple(xor_values, instruction_values)  
   
   # with open(f"means_{INSTRUCTION}.txt", 'w') as file:
   #    for i in range(len(AMBIENTS)):
   #       file.write(f"{AMBIENTS[i]}")
   #       for m in means[i]:
   #          file.write(f"\t{m}")
   #       file.write("\n")


if __name__ == '__main__':
   # parser = argparse.ArgumentParser()
   # parser.add_argument('--file', default="host_amd_xor", type=str, help="Result's file were to read from")
   # args = parser.parse_args()

   main()
