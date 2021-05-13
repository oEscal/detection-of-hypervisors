# detection-of-hypervisors

 - All the files referred on this README can be found on the `code/` directory.

## Measurement programs

 - The user mode program code can be found on the `user/` directory, under the file `main.c`. To run it, you have to run the following commands on the terminal:
    ```bash
    $ make                                                              # compile the code
    $ ./main                                                            # when running like this, the output will be displayed on the terminal
    $ ./run.sh <number_iterations> <file_name>                          # when running like this, the output will be saved in the file <file_name>, on the results directory
    ```
 - The kernel mode program code can be found on the `kernel/` directory, under the file `cicles_counter.c` (we know, the name should be cycles_counter, but when we found out it was too late to change everything :-). The file `kernel/to_run.h` is used to pass the instruction we want to run on the program (this way, it is more easy to automate the execution using the script presented bellow). To run it, you have to run the following commands on the terminal:
    ```bash
    $ make                                                              # compile the code
    $ sudo insmod cicles_counter.ko                                     # install the kernel module
    $ cat /proc/cicles_counter                                          # when running like this, the output will be displayed on the terminal; take into consideration that the output is in binary format, hence it will not be human friendly
    $ ./run_several_times.sh <number_iterations> <file_name>            # when running like this, the module will be run for the three instructions under study (cpuid, rtc and lgdt), and the files with the results will be saved on the results directory, under the file <file_name>_<instruction>
    ```
 - Take into consideration that these programs output all the measurements done, which means that the quantity of data outputted will be directly proportional to the number of iterations.
 - We also can find the file `assembly_instructions.h` on the repository root, where is defined the functions to run the assembly code of the instructions we studied. This header file will be later imported on each code when this is compiled, and the reason to encapsulate the assembly code on macros and not on "normal" C functions was to avoid the overhead of calling a function each time we want to run the instruction, giving more precise measurements.


## Data study

 - On the root directory of this repository, you can find the Python script `data_distribution.py`. This script, by giving a mode (kernel or user) and an instruction (cpuid, rtc and lgdt), will create the graphs presented on the report. At the end, the script will also save the ratio between the minimums of the number of clock cycles of the instruction XOR and one of the other instructions under study to a file, on the directory `mins/` (this file will have saved a binary map, saved using pickle).
 - To run this script, for example for the user mode and instruction cpuid, we can run the following command on the terminal:
    ```bash
    $ python data_distribution.py --mode user --instruction cpuid
    ```

## Hypervisor detection

 - On the root directory, we can also find the Python script `hypervisor_detection.py`. This one will read one of the files with the minimums, created when running the `data_distribution.py` script, and will also run the measurement programs. Finally, with the execution of one of these programs, it will calculate the minimum ratio between the number of clock cycles obtained from the execution of the instruction XOR and the instruction given, and will guess the ambient where it was run (host, vmware, qemu, virtualbox or hyperv). 
 - We can run this script by executing the following command on the terminal:
    ```bash
    $ python --mode user --instruction cpuid --cpu amd --verbose 1
    ```

## Notes

 - To run the Python scripts, you should create a virtual environment, in order to install the needed dependencies:
    ```bash
    $ virtualenv venv                                                   # create the virtual environment venv
    $ source venv/bin/activate                                          # enter the virtual environment
    $ pip install -r requirements.txt                                   # install the needed dependencies
    ```
