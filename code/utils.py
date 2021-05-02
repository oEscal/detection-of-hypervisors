import struct


def get_data_from_file(file, mode):
   xor_values = []
   instruction_values = []

   if mode == "kernel":
      with open(f"{file}", 'rb') as file:
         data = file.read()
      
      for i in range(0, len(data), 16):
         current = struct.unpack('Q', data[i:i + 8])[0]
         xor_values.append(current)

      for i in range(8, len(data), 16):
         current = struct.unpack('Q', data[i:i + 8])[0]
         instruction_values.append(current)
   elif mode == "user":
      with open(f"{file}.txt", "r") as file:
         for l in file.readlines():
            current = l.split(" ")
            xor_values.append(int(current[0]))
            instruction_values.append(int(current[1]))

   return xor_values, instruction_values