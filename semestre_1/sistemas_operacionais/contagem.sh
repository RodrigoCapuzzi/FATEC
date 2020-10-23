#!/bin/sh
i=0
while [ $i -lt 9 ]
do
  echo $i
  i=$(( $i + 1 ))
done
exit 0
