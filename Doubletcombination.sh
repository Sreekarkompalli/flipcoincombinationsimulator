#!/bin/bash -x
is_Flip_Coin_Head=1;
is_Flip_Coin_Tail=2;
HH=0;
TT=0;
HT=0;
TH=0;
declare -A Doublet
for((counter=1;counter<=100;counter++))
do
coin_Check1=$(($(($RANDOM%2))+1))
coin_Check2=$(($(($RANDOM%2))+1))

if [[ $coin_Check1 -eq 1 && $coin_Check2 -eq 1 ]]
then
Doublet[$counter]=11
elif [[ $coin_Check1 -eq 2 && $coin_Check2 -eq 2 ]]
then
Doublet[$counter]=22
elif [[ $coin_Check1 -eq 1 && $coin_Check2 -eq 2 ]]
then
Doublet[$counter]=12
else
Doublet[$counter]=21
fi
done
for value in ${Doublet[@]}
do
  if [ $value -eq 22 ]
  then
  HH=$(($HH+1))
  elif [ $value -eq 11 ]
  then
  TT=$(($TT+1))
  elif [ $value -eq 12 ]
  then
  HT=$(($HT+1))
  else
  TH=$(($TH+1))
  fi
done
 echo "the percentage of heads heads won the toss is " $HH
 echo "the percentage of Tails Tails won the toss is " $TT
 echo "the percentage of heads heads won the toss is " $HT
 echo "the percentage of Tails Tails won the toss is " $TH

 
