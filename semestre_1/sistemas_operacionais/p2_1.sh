#Fazer um programa que crie os diretórios rdir e sdir, receba o nome de um arquivo e se ele terminar 
#com a letra r copie para  rdir, se ele terminar com s copie para sdir, e se ele não terminar com r ou s 
#delete o arquivo.

#!/bin/sh

mkdir rdir
mkdir sdir

case $1 in
    *r)
        #echo "Nome do arquivo termina com r";;
        cp $1 rdir;;
    *s)
        #echo "Nome do arquivo termina com s";;
        cp $1 sdir;;
    *)
        #echo "deletar";;
        rm $1;;
esac
exit 0