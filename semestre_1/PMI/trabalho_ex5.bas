'Definição da sub "preenche_1" se dá com o uso da palavra reservada "Sub" seguido do nome da sub
Sub preenche_1()
'
' Essa macro tem como objetivo suprir o solicitado no exercicio 1,
' No qual, dado um valor digitado pelo usuário no inputbox, retorna-se a tabela com os resultados da tabuada daquele numero
'
'
Dim numero As Integer

    'a variável numero recebe o valor digitado pelo usuário no inputbox
    numero = InputBox("Digite o número que deseja ver a tabuada: ")
    'o valor da variável numero é armazenado na célula linha 4 e coluna 6 da aba "74_77"
    Worksheets("74_77").Cells(4, 6).Value = numero
    'seleciona-se a célula E6
    Range("E6").Select
    'define-se o valor da célula ativa como sendo o valor de R4C6 travado com F4
    ActiveCell.FormulaR1C1 = "=R4C6"
    'faz-se um autofill no range entre E6 e E15
    Selection.AutoFill Destination:=Range("E6:E15"), Type:=xlFillDefault
    'Seleciona-se a célula F6
    Range("F6").Select
    'Na célula ativa chama-se a fórmula tabuada_ro, oferecendo como argumento o conteúdo de RC[-3] e R4C6
    ActiveCell.Formula2R1C1 = "=tabuada_ro(RC[-3],R4C6)"
    'Faz-se um auto-completa no range entre F6 e F15
    Selection.AutoFill Destination:=Range("F6:F15")
    'seleciona-se a célula F16 para sair da área de seleção
    Range("F16").Select
    
'fim da sub
End Sub

'definição da sub "apaga"
Sub apaga()
'
' apaga Macro
'
'
    'seleciona-se o range entre F6 e F15
    Range("F6:F15").Select
    'deleta-se o conteudo da seleção
    Selection.ClearContents
    'seleciona-se F16 para sair fora da área de seleção
    Range("F16").Select
    
'fim da sub
End Sub
'Inicio da sub preenche_2
Sub preenche_2()
'
' Esta sub atende os requisitos especificados na questão 2, que pede a tabuada do 5 seja aparecida na tabela e que cada etapa seja mostrada num msgbox
'

'começa-se dimensionando linha, coluna e resultado como inteiro
Dim linha As Integer
Dim coluna As Integer
Dim resultado As Integer

'inicializa-se as variaveis linha e coluna com o valor 6
linha = 6
coluna = 6

'seleciona-se a célula F4
Range("F4").Select
'na célula ativa preenche-se com o valor 5
ActiveCell.FormulaR1C1 = "5"
'entra no For, iterando-se 10 vezes
For contador = 1 To 10
    'a variavel resultado recebe o valor do contador vezes 5
    resultado = contador * 5
    'uma caixa de mensagem (Msgbox) apresenta o resultado da multiplicação
    'ela apresenta o valor momentaneo do contador, concatenado com "* 5", para mostrar que o valor foi multiplicado por 5, mais o valor momentaneo da variavel "resultado"
    MsgBox (contador & " * " & "5" & " = " & resultado)
    'a célula (linha,coluna), com valor parametrizavel, recebe o valor de resultado
    Cells(linha, coluna).Value = resultado
    'a célula anterior recebe o valor 5
    Cells(linha - 1, coluna - 1) = 5
    'incrementa-se a linha em 1 para poder fazer os calculos para a proxima linha da tabuada
    linha = linha + 1
'chama a proxima repetição
Next
'fim da sub
End Sub

'inicio da sub preenche_3
Sub preenche_3()
'
' essa sub responde a pedida do exercicio 3 de mostrar cada passo da iteração da montagem da tabuada através de msgbox.
'o pedido de tabuada é feito por inputbox pelo usuario
'

'Começa-se dimensionado as variaveis
'linha2, coluna2 e resultado2 como inteiro
'mensagem como string e multiplicador como variante
Dim linha2 As Integer
Dim coluna2 As Integer
Dim mensagem As String
Dim multiplicador As Variant
Dim resultado2 As Integer

'inicializa-se as variaveis com o valor 6
linha2 = 6
coluna2 = 6
    
'armazena-se o string escrito abaixo na variavel mensagem
mensagem = "Digite a tabuada que você quer."
'mostre o inputbox. Nesse inputbox incluimos um tratamento de erros
showInputBox:
'recebe-se o valor do usuário através do inputbox que apresenta a mensagem contida na variavl mensagem na tela
multiplicador = InputBox(mensagem)
'Caso o usuário clique em cancelar, aparece o msgbox "operação cancelada"
If multiplicador = False Then
    MsgBox ("Operação cancelada!")
    End
'caso o usuario nao cancele, continua-se a operação
Else
    'se o usuario deixar vazio o campo, aparece a mensagem dizendo que é necessário digitar um valor
    If multiplicador = vbNullString Then
        MsgBox ("Campo Vazio. É necessário digitar um valor!")
        'reapresenta-se o inputbox. isso se dá retornando-se para a linha que diz "showinputbox
        'isso faz com que haja um looping caso o usuario opte por sempre cancelar ou não digitar nada no campo
        'esse looping só para quando o usuário digitar um número válido
        GoTo showInputBox
    'fim do segundo if
    End If
'fim do primeiro if
End If
'adiciona-se na celula de linha 4 e coluna 6 o valor de multiplicador
Worksheets("74_77").Cells(4, 6).Value = multiplicador
'seleciona-se a celula E6
Range("E6").Select
'a celula ativa recebe o valor de R4C6, travada com F4
ActiveCell.FormulaR1C1 = "=R4C6"
'autocompleta-se de E6 a E15
Selection.AutoFill Destination:=Range("E6:E15"), Type:=xlFillDefault
'Seleciona-se F6 novamente
Range("F6").Select

'itera-se 10 vezes
For contador2 = 1 To 10
    'variavel resultado2 recebe o resultado da multiplicação entre contador2 e multiplicador
    resultado2 = contador2 * multiplicador
    'apresenta-se o msgbox com o resultado
    MsgBox (contador2 & " * " & multiplicador & " = " & resultado2)
    'e a celula (linha2, coluna2), parametrizada para receber um novo valor após cada iteração, recebe o valor de resultado2
    Cells(linha2, coluna2).Value = resultado2
    'incrementa-se 1 no valor da variavel linha 2
    linha2 = linha2 + 1
'chama-se a próxima iteração
Next
'fim da sub
End Sub

'Inicio da sub preenche_4
Sub preenche_4()
'
'Essa sub visa suprir o pedido do enunciado 4 que pede para apresentarmos o resultado completo da tabuada no msgbox além de atualizar a tabela
'com a tabuada desejada pelo usuário no inputbox
'
'

'Dimensionando as variáveis abaixo
'resultado, que é uma variável iterável de 1 a 10, como inteiro
Dim resultado(1 To 10) As Integer
'multiplicador2 como variante
Dim multiplicador2 As Variant
'linha2, coluna2 e resultado2 como inteiro
Dim linha2 As Integer
Dim coluna2 As Integer
Dim resultado2 As Integer
'mensagem como string
Dim mensagem As String

'inicializando a variavel multiplicador2 com o resultado obtido pelo inputbox
multiplicador2 = InputBox("Digite a tabuada que voce quer")

'inicializando linha2 e coluna2 com o valor 6
linha2 = 6
coluna2 = 6

'mostre o inputbox. Nesse inputbox incluimos um tratamento de erros
showInputBox:
'Caso o usuário clique em cancelar, aparece o msgbox "operação cancelada"
If multiplicador2 = False Then
    MsgBox ("Operação cancelada!")
    End
'senão
Else
    'se o multiplicador for nulo, apresentar msg que precisa digitar algo
    If multiplicador2 = vbNullString Then
        MsgBox ("Campo Vazio. É necessário digitar um valor!")
        'loopping mostrando a caixa de input de novo
        GoTo showInputBox
    'fim do segundo if
    End If
'fim do primeiro if
End If
'celula da linha 4 e coluna 6 recebe o valor da variavel multiplicador2
Worksheets("74_77").Cells(4, 6).Value = multiplicador2
'seleciona a célula E6
Range("E6").Select
'na célula ativa recebe o valor travado F4 de R4C6
ActiveCell.FormulaR1C1 = "=R4C6"
'faz-se um autofill entre o range E6 e E15
Selection.AutoFill Destination:=Range("E6:E15"), Type:=xlFillDefault
'seleciona-se F6
Range("F6").Select

'entra-se no loop For, itera-se por 10 vezes, que significa aqui calcular e escrever valores para as 10 próximas linhas na tabela
For contador2 = 1 To 10
    'a variavel resultado2 recebe o valor da multiplicação de contador2 por multiplicador2
    resultado2 = contador2 * multiplicador2
    'a celula da linha2 e coluna2 (parametrizado) recebe o valor de resultado2
    Cells(linha2, coluna2).Value = resultado2
    'incrementa-se linha2 para pular de linha
    linha2 = linha2 + 1
'chama-se a próxima iteração
Next

'entra-se no segundo loop de for, dessa vez pra alimentar o msgbox com todos os resultados das operações da tabuada
For i = 1 To 10
    'a variavel resultado(i), na qual i é parametrizavel recebe o valor de multiplicador2 vezes o valor de i
    resultado(i) = i * multiplicador2
'chama-se a próxima iteração
Next

'apresenta-se o msgbox com todas as etapas e resultados da tabuada, conforme pedido
MsgBox ("O resultado da tabuada do " & multiplicador2 & " é: " & Chr(13) & "1 * " & multiplicador2 & " = " & resultado(1) & Chr(13) & "2 * " & multiplicador2 & " = " & resultado(2) & Chr(13) & "3 * " & multiplicador2 & " = " & resultado(3) & Chr(13) & "4 * " & multiplicador2 & " = " & resultado(4) & Chr(13) & "5 * " & multiplicador2 & " = " & resultado(5) & Chr(13) & "6 * " & multiplicador2 & " = " & resultado(6) & Chr(13) & "7 * " & multiplicador2 & " = " & resultado(7) & Chr(13) & "8 * " & multiplicador2 & " = " & resultado(8) & Chr(13) & "9 * " & multiplicador2 & " = " & resultado(9) & Chr(13) & "10 * " & multiplicador2 & " = " & resultado(10))

'fim da sub
End Sub


'Definição da função de nome "tabuada_ro". Inicia-se com a palavra reservada "Function" seguida do nome da função
'Essa função tem como parâmetros "num1" e "num2" ambos do tipo Inteiro e o retorno dessa função é também como inteiro
Function tabuada_ro(num1 As Integer, tab1 As Integer) As Integer
    
    'a função recebe na variável tabuada_ro, que é justamente o retorno da função, o valor resultante da multiplicação entre os números "num1" e "num2"
    tabuada_ro = num1 * tab1
    
'fim da function
End Function
