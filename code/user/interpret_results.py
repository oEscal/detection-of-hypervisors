import argparse


def main(args):
   instruction_data = []
   xor_data = []

   with open(f"results/{args.file}", "r") as file:
      for l in file.readlines():
         current = l.split(" ")
         xor_data.append(int(current[0]))
         instruction_data.append(int(current[1]))

   print(min(xor_data))
   print(min(instruction_data))

   print(f"Minimum of clock cycles: {min(instruction_data)/min(xor_data)}")
   print(f"Maximum of clock cycles: {max(instruction_data)/min(xor_data)}")


if __name__ == '__main__':
   parser = argparse.ArgumentParser()
   parser.add_argument('--file', default="host_amd.txt", type=str, help="Result's file were to read from")
   args = parser.parse_args()

   main(args)

