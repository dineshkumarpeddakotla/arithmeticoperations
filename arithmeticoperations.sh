#!/bin/bash 
read -p "enter the number" a
read -p "enter the number" b
read -p "enter the number" c
s1=$(( a+b*c ))
s2=$(( a*b+c ))
s3=$(( c+a/b ))
