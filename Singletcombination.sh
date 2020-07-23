#!/bin/bash -x
is_Flip_Coin_Head=1;
is_Flip_Coin_Tail=2;
Heads=0;
Tails=0;
declare -A Singlet
for((counter=1;counter<=100;counter++))
do
coin_Check=$(($(($RANDOM%2))+1))
if [ $coin_Check -eq $is_Flip_Coin_Head ]
then
Singlet[$counter]=3
else
Singlet[$counter]=4
fi
done
for value in ${Singlet[@]}
do
  if [ $value -eq 3 ]
  then 
  Heads=$(($Heads+1))
  else
  Tails=$(($Tails+1))
  fi
done
 echo "the percentage of heads won the toss is " $Heads
 echo "the percentage of Tails won the toss is " $Tails

