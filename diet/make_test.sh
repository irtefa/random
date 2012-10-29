#!/bin/bash

idx=1

while :
do
  calorie_cnt=$((RANDOM-16000))
  food_nm="Food${idx}"
  echo "$food_nm $calorie_cnt"
  idx=$((idx+1))
done
