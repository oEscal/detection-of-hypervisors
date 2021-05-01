instruction_data = []
xor_data = []

with open("results/host_amd.txt", "r") as file:
   for l in file.readlines():
      current = l.split(" ")
      xor_data.append(int(current[0]))
      instruction_data.append(int(current[1]))

print(min(xor_data))
print(min(instruction_data))

print(f"Minimum of clock cycles: {min(instruction_data)/min(xor_data)}")
print(f"Maximum of clock cycles: {max(instruction_data)/min(xor_data)}")
