# detection-of-hypervisors

## Initial work

 - First, we just run a simple test for `cpuinfo` and mesure the time between the beginning and the end of the instruction. We also, for accuracy reasons, run our simple program on the same thread of the same CPU core (in this case, the one with the index 0), using the Linux command `taskset`:
    
    ```bash
    $ taskset -c 0 ./main
    ```

 - To run the program several times, we created and used the a bash script:
    ```bash
    $ ./run_several_times.sh <number of times> <path to file to save the results>
    ```

## Kernel mode

```bash
$ make
$ sudo rmmod cicles_counter; sudo insmod cicles_counter.ko 
$ taskset -c 0 cat /proc/cicles_counter > results/host_amd
$ python interpret_results.py
```


`https://devarea.com/linux-kernel-development-kernel-module-parameters/`
