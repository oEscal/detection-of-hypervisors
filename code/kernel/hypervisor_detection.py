import argparse
import struct

import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm

from data_distribution import boxcox_transformation


AMBIENTS = ["host", "qemu", "vmware", "virtualbox"]
INSTRUCTION = "cpuid"

def main():
   with open(f"means_{INSTRUCTION}.txt", 'r') as file:
      data = file.read()
   statistics = {line.split('\t')[0]: [float(v) for v in line.split('\t')[1:]] for line in data.split('\n') if line}

   for ambient in AMBIENTS:
      with open(f"results/{ambient}_intel_xor", 'rb') as file:
         data = file.read()
      xor_min = 1000
      for i in range(0, len(data), 4):
         current_xor = struct.unpack('I', data[i:i + 4])[0]
         if current_xor < xor_min:
            xor_min = current_xor
      print(xor_min)

      with open(f"results/{ambient}_intel_{INSTRUCTION}", 'rb') as file:
         data = file.read()
      values = []
      for i in range(0, len(data), 4):
         values.append(struct.unpack('I', data[i:i + 4])[0]/xor_min)

      print(f"Real ambient: {ambient}")
      result = "host"
      probabilities = []
      for k in statistics:
         if np.abs(np.abs(statistics[k][0] - np.min(values)) < np.abs(statistics[result][0] - np.min(values))):
            result = k
         probabilities.append(norm.pdf(np.mean(values), statistics[k][1], statistics[k][2]))

      print(f"Guessed ambient with minimum: {result}")
      print(f"Guessed ambient with normal distribution: {AMBIENTS[probabilities.index(max(probabilities))]}")

      print("****************************************************************\n\n\n")


if __name__ == '__main__':
   # parser = argparse.ArgumentParser()
   # parser.add_argument('--file', default="host_amd_xor", type=str, help="Result's file were to read from")
   # args = parser.parse_args()

   main()
