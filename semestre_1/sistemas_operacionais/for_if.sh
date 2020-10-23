#!/bin/sh
echo "Numeros impares de 0 a 14:"
for i in $(seq 0 14)
do
        if [ $(($i%2)) -eq 1 ]
        then
                echo $i
        fi
done
exit 0
