#!/bin/sh
i=0
until [ $i -gt 14 ]
do
        echo $i
        i=$(( $i + 1 ))
done
exit 0
