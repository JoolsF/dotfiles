#!/bin/bash
  
echo "Wrapping all in ${1} and outputting to ${2}"
 
while read p; do
  wrapped="\"$p\","
  echo $wrapped >> $2
  done < $1 
  
cat $2 | xclip -selection clipboard

