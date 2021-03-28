with open("results/host.txt", "r") as file:
   data = [int(i.split(" ")[2]) for i in file.readlines()[1:]]

print(f"Minimum of clock cycles: {min(data)}")
print(f"Number of times that we obtained this value: {data.count(min(data))}")
