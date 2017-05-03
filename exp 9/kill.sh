#!bin/bash
csize=10.0
ccpu=10.0
while(true)
do
	ps -e -o  pmem=,pcpu=,pid=,user=,comm= --sort=-pmem |
	while read size cpu pid user comm
		do
		killsize=0
		killcpu=0
		# check if memory and cpu usage is more
		if [ "$user"  = "bolt" ]
			then
 			killsize=$( echo "$size>$csize" | bc )
			killcpu=$( echo "$cpu>$ccpu" | bc )
			if [ "$killsize" = "1" ]
			then 
				kill $pid
			elif [ "$killcpu" = "1" ]
			then 
				kill $pid
			else
				continue
			fi
		fi
		done
	sleep 2
done
