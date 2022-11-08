#!/bin/bash
find_circle(){
  arr=($(cat result))
  amt=0
  for i in ${arr[@]}; do
    curr=$(grep "INVESTMENT" $(grep $i map | grep -o "\S\+$")) 
    amte=${curr//INVESTMENT \$}
    # echo $amte
    amt=$((amt+amte))
  done
  echo $amt

}
