#!/bin/bash
# Validate numbers...

echo "Please enter a list of numbers between 1 and 100. "
read NUMBERS

for NUM in $NUMBERS
do
        if [ "$NUM" -lt 1 ] || [ "$NUM" -gt 100 ]; then
                echo "Invalid Number ($NUM) - Must be between 1 and 100!"
        else
                echo "$NUM is valid."
        fi
done


