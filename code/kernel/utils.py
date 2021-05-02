import struct


def get_data_from_file(file):
   with open(f"results/{file}", 'rb') as file:
      data = file.read()
   xor_values = []
   instruction_values = []
   for i in range(0, len(data), 16):
      current = struct.unpack('Q', data[i:i + 8])[0]
      xor_values.append(current)

   for i in range(8, len(data), 16):
      current = struct.unpack('Q', data[i:i + 8])[0]
      instruction_values.append(current)

   return xor_values, instruction_values