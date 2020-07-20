#!/bin/bash

machines=('nomitahir.com' 'google.com' 'facebook.com' 'example.com')

for i in "${machines[@]}"; do
  if ping -c 3 $i &> /dev/null
  then
    echo $i "works"
  else
    echo $i "is unreachable"
  fi
done
