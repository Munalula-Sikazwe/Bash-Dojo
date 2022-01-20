#! /bin/bash

while getopts "f:c:" temperature; do
case "$temperature" in 
    f)result=$(echo "scale=2; (($OPTARG-32)/(9/5))" | bc);;
    c)result=$(echo "scale=2; ($OPTARG * (9/5)) + 32" | bc );;
    \?);;
esac

done

echo "$result"