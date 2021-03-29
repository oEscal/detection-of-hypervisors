with open("results/virtualbox.txt", "r") as file:
   data = [int(i.split(" ")[2]) for i in file.readlines()[1:]]

print(f"Minimum of clock cycles: {min(data)}")
print(f"Number of times that we obtained this value: {data.count(min(data))}")

print(f"\n\n\nMaximum of clock cycles: {max(data)}")
print(f"Number of times that we obtained this value: {data.count(max(data))}")
