#!/bin/sh
qtdd=$1
if [ $qtdd -lt 0 ]
then
  echo "Qtdd nao valida. Insira um numero inteiro positivo"
else
  if [ $qtdd -le 100 ]
  then
    echo "O valor eh de 15 reais por produto"
  elif [ $qtdd -le 200 ]
  then
    echo "O valor eh de 14 reais por produto"
  else
    echo "o valor eh de 12 reais por produto"
  fi
fi
exit 0
