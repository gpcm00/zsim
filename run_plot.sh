#!/bin/bash

args=(
    "matrix_data/coup matrix_data/base Dense_Matrix"
)

l2=(
    "hGETX"
    "PUTX"
    "mGETS"
)

l1=(
    "INV"
    "mGETS"
    "mGETXSM"
)

python plot.py ${args[@]} -l2 ${l2[@]} -l1 ${l1[@]} -average_cycle 1

# l2=(
#     'mGETS'
# )

# l1=(
#     "inv"
# )

# python plot.py $@ -l2 ${l2[@]} -l1 ${l1[@]}