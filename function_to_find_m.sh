#!/bin/bash

# Ensure the script is executed with three arguments
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 x y b"
    exit 1
fi

# Assign input arguments to variables
x=$1
y=$2
b=$3

# Check if x is zero to avoid  division by zero
if [ "$x" -eq 0 ]; then
    echo "Error: Division by zero is not allowed."
    exit 1
fi

# Calculate m
m=$(echo "scale=2; ($y - $b) / $x" | bc)

echo "$m"

