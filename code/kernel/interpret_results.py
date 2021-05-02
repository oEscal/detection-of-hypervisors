import argparse

from utils import get_data_from_file


def main(args):
   xor_values, instruction_values = get_data_from_file(args.file)

   print(min(xor_values))
   print(min(instruction_values))

   print(f"Minimum of clock cycles: {min(instruction_values)/min(xor_values)}")
   print(f"Maximum of clock cycles: {max(instruction_values)/min(xor_values)}")

if __name__ == '__main__':
   parser = argparse.ArgumentParser()
   parser.add_argument('--file', default="host_amd_cpuid", type=str, help="Result's file were to read from")
   args = parser.parse_args()

   main(args)
