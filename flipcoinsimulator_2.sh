#!/bin/bash

heads=0
tails=0

while [ $heads -lt 21 ] && [ $tails -lt 21 ]
do
flip=$(( RANDOM % 2 ))
if [ $flip -eq 0 ]
then
heads=$(heads+1)
echo "heads"
else
tails=$(tails+1)
echo "tails"
fi
done

if [ $heads -gt $tails ]
then
echo "heads won total"
elif [ $tails -gt $heads ]
then
echo "tails won total"
else
echo "TIE occurs"
fi
