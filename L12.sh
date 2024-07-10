#!/bin/bash
echo "Enter your choice"
read choice
echo "enter two values"
read r1
read r2
case $choice in
	1) echo `expr $r1 + $r2`;;
	2) echo `expr $r1 - $r2`;;
	3) echo `expr $r1 \* $r2`;;      #As it is a meta Character
	4) echo `expr $r1 / $r2`;;
	5) echo `expr $r1 % $r2`;;
	*) echo "invalid input";;
esac
