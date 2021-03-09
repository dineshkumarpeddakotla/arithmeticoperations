#!/bin/bash
declare -A dic
declare -a arr
read -p "enter the number" a
read -p "enter the number" b
read -p "enter the number" c
s1=$(( a+b*c ))
s2=$(( a*b+c ))
s3=$(( c+a/b ))
s4=$(( a%b+c ))
dic=([0]=$s1 [1]=$s2 [2]=$s3 [3]=$s4)
arr=(${dic[@]})
for(( i=0;i<${#arr[@]};i++ ))
do
for(( j=i+1;j<${#arr[@]};j++ ))
do
if [ ${arr[i]} -lt ${arr[j]} ]
then
temp=${arr[i]}
arr[i]=${arr[j]}
arr[j]=$temp
fi
done
done
echo "descending order" ${arr[@]}
for(( i=0;i<${#arr[@]};i++ ))
do
for(( j=i+1;j<${#arr[@]};j++ ))
do
if [ ${arr[i]} -gt ${arr[j]} ]
then
temp=${arr[i]}
arr[i]=${arr[j]}
arr[j]=$temp
fi
done
done
echo "ascending order" ${arr[@]}
