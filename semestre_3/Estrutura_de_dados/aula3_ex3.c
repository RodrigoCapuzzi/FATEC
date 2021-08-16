/*
Nome: Diego M Carloni        RA: 2040482023018
Nome: Rodrigo S D Capuzzi    RA: 2040482023037

3-Quais serão os valores de x, y e p ao final do trecho de código
abaixo?

int x, y, *p;
y = 0;
p = &y; // variável de ponteiro p recebe endereço da variavel y
x = *p; // variavel x recebe o valor de p -- logo, x recebe 0, pq papontava para o endereço de y
x = 4; //x recebe 4
(*p)++; //primeiro acessa-se o valor para o qual p aponta, que é 0, depois acrescenta-se +1 unidade ...portanto *p =1
–x; // decrementa-se uma unidade no valor de x. Ou seja, x fica com 3
(*p) += x; ao valor para o qual p aponta, soma-se o valor de x. Se *p era 1, soma mais 3 de x e fica 4 

Resp final:
x = 3
y = 4
*p = 4
*/

