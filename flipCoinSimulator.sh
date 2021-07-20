#! /bin/bash -x

flip=$(( RANDOM%2 ))
if [ $flip -eq 0 ]
then
echo "Heads is Winner"
else
echo "Tails is winner"
fi
