import argparse
import struct


def main(args):
   with open(f"results/{args.file}", 'rb') as file:
      data = file.read()
   values = []
   for i in range(0, len(data), 4):
      values.append(struct.unpack('I', data[i:i + 4])[0])

   print(f"Minimum of clock cycles: {min(values)}")
   print(f"Number of times that we obtained this value: {values.count(min(values))}")

   print(f"\n\n\nMaximum of clock cycles: {max(values)}")
   print(f"Number of times that we obtained this value: {values.count(max(values))}")


if __name__ == '__main__':
   parser = argparse.ArgumentParser()
   parser.add_argument('--file', default="host_amd_xor", type=str, help="Result's file were to read from")
   args = parser.parse_args()

   main(args)
