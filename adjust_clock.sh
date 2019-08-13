#!/bin/bash

#time=$(curl http://worldclockapi.com/api/json/utc/now | jq -r '.currentDateTime' | sed 's/T/\ /g' | sed 's/Z/:00/g')

#echo $time

time=$(curl http://worldtimeapi.org/api/ip | jq -r '.datetime')
echo $time

date -s $time
hwclock -w
