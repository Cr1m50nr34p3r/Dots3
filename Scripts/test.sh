#!/usr/bin/env bash
# dict
#declare -A examples
#examples['t1']='1'
#
#examples['t2']='2'
#for key in "${!examples[@]}"
#do
#	echo $key
#done
# timer
while sleep 1
do
	clear
	sq=$( seq 1 100000   )
	for i in $sq
	do
		tput cup 0 0
		printf "%2d\n" $i
	done
done
