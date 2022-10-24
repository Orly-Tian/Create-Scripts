#!/bin/bash


for ((i=101;i<=120;i++))
do
  id=$(printf "%02d" $i)
  dir="/root/test/"
  file=${dir}File${id}
  
  if [ -e $file ]
  then
    rm -r $file &> /dev/null
    touch $file &> /dev/null
    echo "File$id" > $file
  else
    mkdir $dir &> /dev/null
    touch $file &> /dev/null
    echo "File$id" > $file
  fi
done
