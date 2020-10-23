#!/bin/sh
i=$1
while [ $i -ge 0 ]
do
  echo $i
  i=$(( $i -1 ))
done
exit 0
