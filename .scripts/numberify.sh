#!/bin/bash
counter=1
cd /nfs/wallpapers/
for f in $(ls -1)
do
  new_filename=$(printf "%04d" ${counter})     
  echo "${f%.*} => ${new_filename}"
  # mv ${f} ${new_filename}
  (( counter=${counter}+1 ))
done
