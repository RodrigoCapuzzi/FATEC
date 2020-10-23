#!/bin/sh
i = 0
while [ $i -le $1 ]
do
  echo $i
  i=$(( $i + 1 ))
done
exit 0
