#!/bin/bash
c=1
#while [ $c -le 5 ]
#do
#	time -p python fibo.py 
#done

#echo "@@@@@@"

#c=1
#while [ $c -le 5 ]
#do
#        time -p lua fibo.lua 
#done

#echo "@@@@@@"

c=1
while [ $c -le 5 ]
do
        time -p ruby bsort.rb 
done

