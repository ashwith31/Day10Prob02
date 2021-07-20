#! /bin/bash -x

counth=0
countt=0
for((i=0;i<100;i++))
do
flip=$(( RANDOM%2 ))
if [ $flip -eq 0 ]
then
((counth++))
else
((countt++))
fi
done
echo "---Out of 100 flips---"
echo "Number of times heads won is $counth "
echo "Number of times tails won is $countt "
