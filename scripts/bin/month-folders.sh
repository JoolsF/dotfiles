#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <year>"
    exit 1
fi

year=$1

for month in {1..12}; do
    month_name=$(date -d "$year-$month-01" +"%B")
    mkdir "$month $month_name $year"
done
