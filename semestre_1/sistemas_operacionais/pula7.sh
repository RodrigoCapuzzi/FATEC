#!/bin/sh
i=1
until [ $i -gt $1 ]
do
	if [ $i != 7 ]
	then
        	echo $i
	fi
	i=$(( $i + 1 ))
done
exit 0
