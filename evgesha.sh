#!/bin/bash

file="vars"

sleepTime=$(cat "$file")

while [ true ] ; do
wget -P ./ pogoda.tut.by -q

grep -A 3 fcurrent-top index.html | grep temp-i | sed 's/&deg.*//g' | awk -F\> '{print $2}'
rm index.html
sleep $sleepTime
done


