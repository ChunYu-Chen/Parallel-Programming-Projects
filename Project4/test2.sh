#!/bin/bash

# number of threads:
for t in 1 2 4 8
do
    NUMT=$t
    # array size
    for s in 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576 2097152 4194304 8388608
    do
    	ARRAY_SIZE=$s
    	g++ -DARRAY_SIZE=$s -DNUMT=$t Project4_extra.cpp -o Project4_extra -lm -fopenmp
    	./Project4_extra
    done
done