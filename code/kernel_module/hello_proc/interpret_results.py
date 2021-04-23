import struct


def main():
   with open('results/qemu_intel_rtc', 'rb') as file:
      data = file.read()
   values = []
   for i in range(0, len(data), 4):
      values.append(struct.unpack('I', data[i:i + 4])[0])

   print(f"Minimum of clock cycles: {min(values)}")
   print(f"Number of times that we obtained this value: {values.count(min(values))}")

   print(f"\n\n\nMaximum of clock cycles: {max(values)}")
   print(f"Number of times that we obtained this value: {values.count(max(values))}")


if __name__ == '__main__':
   main()
