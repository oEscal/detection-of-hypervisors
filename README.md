# detection-of-hypervisors

## Initial work

 - First, we just run a simple test for `cpuinfo` and mesure the time between the beginning and the end of the instruction. We also, for accuracy reasons, run our simple program on the same thread of the same CPU core (in this case, the one with the index 0), using the Linux command `taskset`:
    
    ```bash
    $ taskset -c 0 ./test
    ```
