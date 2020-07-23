#!/bin/bash -x
is_Flip_Coin_Head=1;
is_Flip_Coin_Tail=2;
HHH=0;
TTT=0;
HTH=0;
HTT=0;
THT=0;
THH=0;
HHT=0;
TTH=0;
declare -A Doublet
for((counter=1;counter<=100;counter++))
do
coin_Check1=$(($(($RANDOM%2))+1))
coin_Check2=$(($(($RANDOM%2))+1))
coin_Check3=$(($(($RANDOM%2))+1))
if [[ $coin_Check1 -eq 1 && $coin_Check2 -eq 1 && $coin_Check3 -eq 1 ]]
then
Doublet[$counter]=111
elif [[ $coin_Check1 -eq 2 && $coin_Check2 -eq 2 && $coin_Check3 -eq 2 ]]
then
Doublet[$counter]=222
elif [[ $coin_Check1 -eq 1 && $coin_Check2 -eq 2 && $coin_Check3 -eq 1 ]]
then
Doublet[$counter]=121
elif [[ $coin_Check1 -eq 1 && $coin_Check2 -eq 2 && $coin_Check3 -eq 2 ]]
then
Doublet[$counter]=122
elif [[ $coin_Check1 -eq 2 && $coin_Check2 -eq 1 && $coin_Check3 -eq 2 ]]
then
Doublet[$counter]=212
elif [[ $coin_Check1 -eq 2 && $coin_Check2 -eq 1 && $coin_Check3 -eq 1 ]]
then
Doublet[$counter]=211
elif [[ $coin_Check1 -eq 1 && $coin_Check2 -eq 1 && $coin_Check3 -eq 2 ]]
then
Doublet[$counter]=112
else
Doublet[$counter]=221
fi
done
for value in ${Doublet[@]}
do
  if [ $value -eq 111 ]
  then
  HHH=$(($HHH+1))
  elif [ $value -eq 222 ]
  then
  TTT=$(($TTT+1))
  elif [ $value -eq 122 ]
  then
  HTT=$(($HTT+1))
   elif [ $value -eq 121 ]
  then
  HTH=$(($HTH+1))
  elif [ $value -eq 212 ]
  then
  THT=$(($THT+1))
 elif [ $value -eq 211 ]
  then
  THH=$(($THH+1))
 elif [ $value -eq 112 ]
  then
  HHT=$(($HHT+1))  
  else
  TTH=$(($TTH+1))
  fi
done
 echo "the percentage of heads heads heads won the toss is " $HHH
 echo "the percentage of Tails Tails tails won the toss is " $TTT
 echo "the percentage of heads TAILS heads won the toss is " $HTH
 echo "the percentage of Tails heads heads won the toss is " $THH
 echo "the percentage of heads Tails tails won the toss is " $HTT
 echo "the percentage of heads heads TAILS won the toss is " $HHT
 echo "the percentage of Tails heads Tails won the toss is " $THT
 echo "the percentage of Tails Tails HEADS won the toss is " $TTH


