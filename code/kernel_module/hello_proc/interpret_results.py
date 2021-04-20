import struct


def main():
   with open('qemu_amd', 'rb') as file:
      data = file.read()

   print(data[:])
   print(len(data))
   print(struct.unpack('I', data[:4]))

   # print(f"Minimum of clock cycles: {min(data)}")
   # print(f"Number of times that we obtained this value: {data.count(min(data))}")
# 
   # print(f"\n\n\nMaximum of clock cycles: {max(data)}")
   # print(f"Number of times that we obtained this value: {data.count(max(data))}")


if __name__ == '__main__':
   main()
