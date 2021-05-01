import argparse
import struct


def main(args):
   with open(f"results/{args.file}", 'rb') as file:
      data = file.read()
   xor_values = []
   instructions_values = []
   for i in range(0, len(data), 16):
      current = struct.unpack('Q', data[i:i + 8])[0]
      xor_values.append(current)

   for i in range(8, len(data), 16):
      current = struct.unpack('Q', data[i:i + 8])[0]
      instructions_values.append(current)

   print(min(xor_values))
   print(min(instructions_values))

   print(f"Minimum of clock cycles: {min(instructions_values)/min(xor_values)}")
   print(f"\n\n\nMaximum of clock cycles: {max(instructions_values)/min(xor_values)}")

if __name__ == '__main__':
   parser = argparse.ArgumentParser()
   parser.add_argument('--file', default="host_amd_cpuid", type=str, help="Result's file were to read from")
   args = parser.parse_args()

   main(args)
