#! /bin/bash -x

counth=0
countt=0
while [ $counth -lt 100 -a $countt -lt 100 ]
do
flip=$(( RANDOM%2 ))
if [ $flip -eq 0 ]
then
((counth++))
else
((countt++))
fi
c=$(( counth-countt ))
if [ $counth -eq 21 -a $c -ge 2 ]
then
echo "Heads won by $c times"
break
elif [ $countt -eq 21 -a ${c#-} -ge 2 ]
then
echo "Tails won by $c times"
break
fi
done
