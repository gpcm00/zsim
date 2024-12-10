#!/bin/bash


l2=(
    
    "mGETXIM"
    "hGETX"
    "PUTX"
)
l1=(
    "inv"
)
python plot.py $@ -l2 ${l2[@]} -l1 ${l1[@]}