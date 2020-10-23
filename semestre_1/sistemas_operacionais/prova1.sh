#!/bin/sh
a=$1            #lê o argumento na linha de comando
if [ $a -eq 1 ] #faz a comparação
then            #entra no if
        ls      #mostra os arquivos do diretório atual
else            #senão
        date    #mostra a data hora atual
fi              #fim do if
exit 0          #sai do programa
