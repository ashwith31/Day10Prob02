#! /bin/bash -x

counth=0
countt=0
while [ $counth -lt 21 -a $countt -lt 21 ]
do
flip=$(( RANDOM%2 ))
if [ $flip -eq 0 ]
then
((counth++))
else
((countt++))
fi
done
echo "Number of Heads=$counth"
echo "Number of tails=$countt"
if [ $counth -eq 21 ]
then
c=$(( counth-countt ))
echo "Heads won by $c times"
fi
if [ $countt -eq 21 ]
then
c=$(( countt-counth ))
echo "Tails won by $c times"
fi
