!/bin/sh
a=$1
b=$2
if [ $a -gt $b ]
then
        echo "O primeiro," $a ", é maior que o segundo," $b
        echo "portanto:"
        until [ $b -gt $a ]
        do
                a=$(( $a - 1 ))
                b=$(( $b + 1 ))
                echo "primeiro =" $a "segundo =" $b
        done
fi
exit 0
