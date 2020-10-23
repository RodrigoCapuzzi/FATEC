'A linha abaixo é a declaração de que uma subrotina está começando, isso se faz com a declaração da palavra reservada Sub seguida do
'nome da subrotina e os parenteses(um aberto seguido de um fechado)
Sub preencheTotal()
'
' preencheTotal Macro
' Esta macro tem por objetivo preencher a coluna Total da aba 36Total
'
' Atalho do teclado: Ctrl+Shift+T
'
    'A linha abaixo seleciona a célula C4
    Range("C4").Select
    'A linha abaixo, na célula ativa, faz o cálculo após o sinal de igual
    'esse cálculo consiste em multiplcar o resultado obtido com o primeiro VLOOKUP com o cálculo do segundo VLOOKUP
    'O primeiro VLOOKUP procura o conteudo de RC[-1], que no nosso caso é a célula C4, na tabela da aba 36GeralV definida
    'entre as células R5C3 a R7C5. O resultado é extraido da segunda coluna e opta-se por uma correspondencia exata
    'o segundo VLOOKUP segue a mesma lógica, mas o valor retornado é o encontrado na coluna 3 da tabela
    ActiveCell.FormulaR1C1 = _
        "=(VLOOKUP(RC[-1],'36GeralV'!R5C3:R7C5,2,FALSE))*(VLOOKUP(RC[-1],'36GeralV'!R5C3:R7C5,3,FALSE))"
    'seleciona-se a célula C4 novamente
    Range("C4").Select
    'é realizado um auto-completar entre o range C4 e C6
    Selection.AutoFill Destination:=Range("C4:C6"), Type:=xlFillDefault
    'Seleciona-se a célula C7
    Range("C7").Select
    'e pede-se para fazer-se um auto-soma entre 3 células acima (-3) e uma célula acima (-1)
    ActiveCell.FormulaR1C1 = "=SUM(R[-3]C:R[-1]C)"
    'seleciona-se uma célula fora da tabela para sair da área de seleção
    Range("C8").Select
End Sub
