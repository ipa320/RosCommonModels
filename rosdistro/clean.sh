#!/bin/bash

path=$1
count_success=0
count=0

for f in $path/*.ros
do
  ((count=count+1))
  number_of_lines=$(wc -l $f)
  if(( ${number_of_lines%% *} > 5 ))
    then
      ((count_success=count_success+1))
  #else
    #rm $f
  fi
done

echo "Total packages:" $count
echo "Total obtained models:" $count_success
echo "Rate:" $((count_success*100/count))"%"
