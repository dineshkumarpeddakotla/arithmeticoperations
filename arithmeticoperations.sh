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
