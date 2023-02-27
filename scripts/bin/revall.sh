#!/bin/bash
  
echo "Reversing all in ${1} and outputting to ${2}"
 
while read p; do
    reversed=$(echo $p | rev)
  echo $reversed >> $2
  done < $1 
  
cat $2 | xclip -selection clipboard

