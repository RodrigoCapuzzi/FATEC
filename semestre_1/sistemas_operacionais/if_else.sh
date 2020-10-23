#!/bin/sh
media=$1
if [ $media -gt 100 ]
then
  echo "Nota deve ser abaixo de 100"
elif [ $media -lt 0 ]
then
  echo "Nota deve ser acima de 0"
else
  if [ $media -ge 60 ]
  then
    echo "Aluno esta aprovado"
  else
    echo "Aluno esta reprovado"
  fi
fi
exit 0
