def main():
   with open('results', 'rb') as file:
      data = file.read()

   print(f"Minimum of clock cycles: {min(data)}")
   print(f"Number of times that we obtained this value: {data.count(min(data))}")

   print(f"\n\n\nMaximum of clock cycles: {max(data)}")
   print(f"Number of times that we obtained this value: {data.count(max(data))}")


if __name__ == '__main__':
   main()
