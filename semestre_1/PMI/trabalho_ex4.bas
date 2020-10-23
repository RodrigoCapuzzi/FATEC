'Inicializa a sub com a palavra reservada "Sub". O nome da sub é "rodizio_preenche"
Sub rodizio_preenche()
'
' rodizio_preenche Macro
' Esta macro tem como finalidade preencher a coluna H da tabela de controle de veiculos. Ela retorna, baseado no final da placa, o dia de rodizio do veiculo em questão
'
' Atalho do teclado: Ctrl+Shift+R
'
    'seleciona a célula H6
    Range("H6").Select
    'na célula ativa, escreve a fórmula definida pelo usuário "rodizio", oferecendo como argumento RC[-3]
    'ou seja, a terceira célula da onde se encontra a célula ativa para a esquerda
    ActiveCell.Formula2R1C1 = "=rodizio(RC[-3])"
    'faz um autofill, isto é, um auto completa da cálula H6 até H18
    Selection.AutoFill Destination:=Range("H6:H18")
    'seleciona H19 para sair fora do range
    Range("H19").Select

'fim da sub
End Sub

'começo da sub "rodizio_deleta"
Sub rodizio_deleta()
'
' rodizio_deleta Macro
' Esta macro tem por finalidade deletar o preenchimento da tabela de controle de veiculos
'
' Atalho do teclado: Ctrl+Shift+D
'
    'seleciona a célula H6
    Range("H6").Select
    'seleciona, desde a célula H6 até a última célula com conteúdo, de cima pra baixo
    Range(Selection, Selection.End(xlDown)).Select
    'e deleta o conteudo destas células
    Selection.ClearContents
    'seleciona a célula H19 pra sair fora da área de seleção
    Range("H19").Select
    
'fim da subrotina
End Sub

'começa a subrotina "rodizio2_preenche"
Sub rodizio2_preenche()
'
' rodizio2_preenche Macro
' Esta macro tem como objetivo fazer o controle de veiculos da aba "71 Rodizio HOJE"
'
' Atalho do teclado: Ctrl+Shift+T
'

'dimensiona as variáveis linha, coluna e contador, que serão usadas mais pra frente, como inteiro
Dim linha As Integer
Dim coluna As Integer
Dim contador As Integer

'inicializa a variável linha com o valor 6
linha = 6
'inicializa a variável coluna com o valor 8
coluna = 8

'inicia a estrutura de repetição For, que itera sob os valores de 1 a 13, que representa a repetição da operação por 13 linhas seguidas
For contador = 1 To 13
    'seleciona a célula "cells(linha, coluna), cujos valores estão parametrizados pelas variáveis linha e coluna,
    'que na primeira iteração recebem os valores de 6 e 8, justamente os valores que essas variáveis assumiram na inicialização acima
    'Após cada iteração, esse valor muda, porque é parametrizado, ou seja, ele varia
    Cells(linha, coluna).Select
    'a célula ativa recebe o valor resultante no cálculo da function rodizio3, que oferece, por sua vez, como primeiro argumento o conteudo
    'de (linha,coluna -3), ou seja, tira 3 do valor da variavel coluna, e como segundo argumento o valor de (linha,coluna-1),
    'ou seja, o valor que linha possui nessa iteração e o valor que coluna possui nessa iteração menos 1
    ActiveCell.Value = rodizio3(Cells(linha, coluna - 3).Value, Cells(linha, coluna - 1).Value)
    'aqui, no final do loop, acrescenta-se 1 no valor da linha para incrementar esse valor, propiciando que se "pule de linha", por assim dizer
    linha = linha + 1
'o comando next chama para a próxima iteração
Next
'seleciona-se a célula H19 para sair da área de seleção
Range("H19").Select

'fim da sub
End Sub

'inicio da sub rodizio2_deleta
Sub rodizio2_deleta()
'
' rodizio2_deleta Macro
' Esta macro deleta o preencheimento da coluna "Situação" da aba "71 Rodizio HOJE"
'
' Atalho do teclado: Ctrl+Shift+F
'
    'seleciona-se o range entre H6 e H18
    Range("H6:H18").Select
    'Deleta-se o conteudo presente nesse range
    Selection.ClearContents
    'seleciona-se H19 para sair fora da área de seleção
    Range("H19").Select
'fim da sub
End Sub

'inicio da sub "licenciamento_preenche"
Sub licenciamento_preenche()
'
' licenciamento_preenche Macro
' Esta macro preenche o licenciamento dos caminhões
'
' Atalho do teclado: Ctrl+Shift+Y
'
    'seleciona-se a célula I6
    Range("I6").Select
    'na célula ativa, chama-se a fórmula "licenciamento" e fornece-se como argumento o conteúdo de RC[-4]
    'ou seja, contando da célula que estamos, a quarta, da onde estamos para a esquerda.
    ActiveCell.Formula2R1C1 = "=licenciamento(RC[-4])"
    'faz-se um auto-completar entre as células I6 a I18
    Selection.AutoFill Destination:=Range("I6:I18")
    'seleciona-se I19 para sair fora da área de seleção
    Range("I19").Select
'fim da sub
End Sub

'começo da sub "licenciamento_deleta"
Sub licenciamento_deleta()
'
' licenciamento_deleta Macro
' esta macro deleta o licenciamento dos caminhões
'
' Atalho do teclado: Ctrl+Shift+G
'
    'seleciona-se as células compreendidas no intervalo entre I6 e I18
    Range("I6:I18").Select
    'deleta-se o conteudo dessas células
    Selection.ClearContents
    'seleciona-se a célula I19 para sair fora da área de seleção
    Range("I19").Select

'fim da sub
End Sub

'começo da sub "licenciamento2_preenche"
Sub licenciamento2_preenche()
'
' licenciamento2_preenche Macro
' Esta macro preenche o licenciamento de veiculos
'
' Atalho do teclado: Ctrl+Shift+U
'
    'seleciona-se a célula I6
    Range("I6").Select
    'Na célula ativa, chama-se a fórmula "licenciamento2" e fornece-se como argumento o conteúdo de RC[-4]
    'que é a quarta célula contado da direita pra esquerda partindo da onde estamos.
    ActiveCell.Formula2R1C1 = "=licenciamento2(RC[-4])"
    'faz-se um autocompletar entre I6 e I18
    Selection.AutoFill Destination:=Range("I6:I18")
    'seleciona-se I19 para sair fora da área de seleção
    Range("I19").Select

'fim da sub
End Sub

'inicio da sub "licenciamento2_deleta"
Sub licenciamento2_deleta()
'
' licenciamento2_deleta Macro
' esta macro deleta o preenchimento do licenciamento de veiculos
'
' Atalho do teclado: Ctrl+Shift+H
'
    'seleciona-se a célula I6
    Range("I6").Select
    'seleciona-se o range compreendido entre I6 e I18
    Range("I6:I18").Select
    'Deleta-se o conteudo do range selecionado
    Selection.ClearContents
    Range("I19").Select

'fim da sub
End Sub
                                                            
'A function abaixo serve para, baseado no final da placa do carro, dizer o dia da semana que o carro tem rodizio
'ela tem como parametro apenas o dia da semana da placa do carro, recebendo esse argumento em Inteiro e devolvendo em String
Function rodizio(dia_semana As Integer) As String

'A função faz uso do select case. Baseado no final da placa vai dizer o dia da semana do rodizio
Select Case dia_semana
    'caso a placa seja 1 ou 2, a function retornará segunda-feira
    Case 1 To 2: rodizio = "segunda-feira"
    'caso a placa seja 3 ou 4, a function retornará terça-feira
    Case 3 To 4: rodizio = "terça-feira"
    'caso a placa seja 5 ou 6, a function retornará quarta-feira
    Case 5 To 6: rodizio = "quarta-feira"
    'caso a placa seja 7 ou 8, a function retornará quinta-feira
    Case 7 To 8: rodizio = "quinta-feira"
    'caso não seja nenhuma das opções anteriores, a function retornará sexta-feira
    Case Else: rodizio = "sexta-feira"
'fim do select case
End Select

'fim da função
End Function

'Definição da function rodizio3, que tem como parametros placa e status, ambos em string e retorna também um string
Function rodizio3(placa As Integer, status As String) As String

'Abaixo dimensionamento das variáveis da sub
'dimensionando dia_da_semana como inteiro
Dim dia_da_semana As Integer
'dia da placa como inteiro
Dim dia_da_placa As Integer
'dia_hoje como data
Dim dia_hoje As Date
'numero_dia como inteiro
Dim numero_do_dia As Integer

'inicializando dia_hoje com o resultado da função do VBA chamada Date, que nos dá o dia de hoje
dia_hoje = Date
'a veriavel numero_do_dia recebe então o numero correspondente ao dia da semana atraves do calculo
'resultante quando se aplica a função built-in "weekday" no valor de "dia_hoje"
numero_do_dia = Weekday(dia_hoje)

'faz-se um select case baseado no ultimo digito da placa do carro
Select Case placa
    'caso a placa seja final 1 ou 2, a variavel "dia_da_placa" assume o valor 2, que representa a segunda-feira
    Case 1 To 2: dia_da_placa = 2
    'caso a placa seja final 3 ou 4, a variavel "dia_da_placa" assume o valor 3, que representa a terça-feira
    Case 3 To 4: dia_da_placa = 3
    'caso a placa seja final 5 ou 6, a variavel "dia_da_placa" assume o valor 4, que representa a quarta-feira
    Case 5 To 6: dia_da_placa = 4
    'caso a placa seja final 7 ou 8, a variavel "dia_da_placa" assume o valor 5, que representa a quinta-feira
    Case 7 To 8: dia_da_placa = 5
    'caso não seja nenhum desses valores, dia_da_placa recebe 6, que representa a sexta-feira
    Case Else: dia_da_placa = 6
'fim do select case
End Select

'agora entra-se no if-else
'caso o valor de status seja igual a "Manutenção", retorna-se o string "Veiculo parado" para a variavel rodizio3
If status = "Manutenção" Then
    rodizio3 = "Veiculo parado"
'caso não, realiza-se mais um julgamento, na estrutura do if-else (if encadeado)
Else
    'se o valor da variavel "dia_da_placa" é igual ao valor armazenado na variavel "numero_do_dia", então retorna-se a string "Hoje tem rodizio"
    If dia_da_placa = numero_do_dia Then
    rodizio3 = "Hoje tem rodizio"
    'caso não, retorna-se "Liberado para rodar". Lembrando que rodizio3 já é o valor final de retorno da função
    Else
    rodizio3 = "Liberado para rodar"
    'fim do primeiro if
    End If
'fim do segundo if
End If

'fim da function
End Function

'function licenciamento, que tem como parametro finalPlaca, que é o final da placa do carro, como inteiro e devolve uma string
Function licenciamento(finalPlaca As Integer) As String

'baseado num select case, julgando o valor da variável finalPlaca
Select Case finalPlaca
    'Caso a placa seja 1 ou 2, retorna que licenciamento é igual a string "Até Setembro"
    Case 1 To 2: licenciamento = "Até Setembro"
    'Caso a placa seja de 3 a 5, retorna que licenciamento é igual a string "Até Outubro"
    Case 3 To 5: licenciamento = "Até Outubro"
    'Caso a placa seja de 6 a 8, retorna que licenciamento é igual a string "Até Novembro"
    Case 6 To 8: licenciamento = "Até Novembro"
    'Caso não se encaixe em nenhum dos caso, retorna a string "Até dezembro"
    Case Else: licenciamento = "Até Dezembro"
'fim do select case
End Select

'fim da function
End Function


'Definição da function licenciamento2, que retorna uma string, e tem como parametro finalPlaca2 como inteiro
Function licenciamento2(finalPlaca2 As Integer) As String

'Select Case com base no valor de finalPlaca2
Select Case finalPlaca2
    'Caso o valor de finalPlaca2 seja igual a 1, retornar o valor de licenciamento2 como a string "Abril"
    Case 1: licenciamento2 = "Abril"
    'Caso o valor de finalPlaca2 seja igual a 2, retornar o valor de licenciamento2 como a string "Até Maio"
    Case 2: licenciamento2 = "Até Maio"
    'Caso o valor de finalPlaca2 seja igual a 3, retornar o valor de licenciamento2 como a string "Até Junho"
    Case 3: licenciamento2 = "Até Junho"
    'Caso o valor de finalPlaca2 seja igual a 4, retornar o valor de licenciamento2 como a string "Até Julho"
    Case 4: licenciamento2 = "Até Julho"
    'Caso o valor de finalPlaca2 seja de 5 a 6, retornar o valor de licenciamento2 como a string "Até Julho"
    Case 5 To 6: licenciamento2 = "Até Agosto"
    'Caso o valor de finalPlaca2 seja igual a 7, retornar o valor de licenciamento2 como a string "Até Setembro"
    Case 7: licenciamento2 = "Até Setembro"
    'Caso o valor de finalPlaca2 seja igual a 8, retornar o valor de licenciamento2 como a string "Até Outubro"
    Case 8: licenciamento2 = "Até Outubro"
    'Caso o valor de finalPlaca2 seja igual a 9, retornar o valor de licenciamento2 como a string "Até Novembro"
    Case 9: licenciamento2 = "Até Novembro"
    'Caso não seja nenhuma dessas opções, retornar a string "Até Dezembro"
    Case Else: licenciamento2 = "Até Dezembro"
'Fim do select Case
End Select

'Fim da function
End Function
                                                            
