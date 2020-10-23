' FATEC IPIRANGA
' ADS Noturno
' Programação em Microinformática
' Grupo 6
' Autor: Rodrigo Sanches Dias - RA: 2040482023037

'Incia-se a subrotina com a palavra reservada "Sub", seguida do nome da sub, aqui no caso "preencheRodrigo"
Sub preencheRodrigo()
'
' preencheRodrigo Macro
' Esta macro calcula o quanto de retorno financeiro o cliente teve em 1 ano de investimento em determinado investimento
' O cálculo leva em consideração o quanto que o investimento rendeu, o quanto de IR que o cliente pagou em cima do investimento
' e também a inflação acumulada no período
'
' Atalho do teclado: Ctrl+Shift+R
'
    'Começamos a subrotina dimensionando (Dim) as variáveis contador como inteiro
    Dim contador As Integer
    'e a variável inflacao como double
    Dim inflacao As Double
    'Select seleciona o objeto, aqui no caso o range("G7")
    Range("G7").Select
    'Na fórmula ativa, escreve a fórmula "ganho de capital", que tem como argumentos de entrada as células RC[-3], RC[-2] e RC[-1]
    'ou seja, tres, duas e uma celula antes à esquerda, respectivamente
    'Esta fórmula calcula o ganho de capital que o cliente teve, o quanto que o dinheiro dele rendeu após um ano
    'e isso é feito pela Função Definida pelo Usuário (FDU) de nome "ganhoCapital" presente na aba "rodrigo_function"
    ActiveCell.Formula2R1C1 = "=ganhoCapital(RC[-3],RC[-2],RC[-1])"
    'Faz-se um autocompletar entre o intervalo G7 e G16
    Selection.AutoFill Destination:=Range("G7:G16")
    'seleciona-se a célula H7
    Range("H7").Select
    'Na célula ativa, invoca a fórmula "rentabLiquida", que toma como argumentos RC[-4] e RC[-1], ou seja 4 e 1 célula à esquerda respectivamente
    'essa FDU calcula a rentabilidade líquida do investimento, e retorna um valor em porcentagem indicando o quanto que o dinheiro do cliente rendeu
    ActiveCell.Formula2R1C1 = "=rentabLiquida(RC[-4],RC[-1])"
    'Faz-se um autocompletar entre o range H7 e H16
    Selection.AutoFill Destination:=Range("H7:H16")
    'aqui recebemos informação do usuário através de um inputbox e aramzenamos o dado na variavel inflação
    inflacao = InputBox("Digite a inflação IPCA do período" & Chr(13) & "Exemplo.: Para IPCA 2019 = 4,31%, digite 4,31")
    'inicializando a variável coluna com o numero 9, para, mais pra frente, podermos fazer iterações na nona coluna
    coluna = 9
    'entra-se na estrutura de repetição for, inicializando o contador em 7 e indo até 16, para podermos iterar entre as sétimas e décima-sexta linhas
    For contador = 7 To 16
        'aqui retira-se da linha, porém da coluna ligeiramente à esquerda o valor da inflação
        '(dividido por 100 para transformar em porcentagem, já que pedimos para o usuário digitar em 4% de inflação apenas como 4.0 no inputbox
        Cells(contador, coluna).Value = Cells(contador, coluna - 1) - (inflacao / 100)
    'next chama a próxima iteração
    Next
    'Seleciona-se a célula J7
    Range("J7").Select
    'Invoca-se na célula ativa a Função Definida pelo Usuário (FDU) de nome "classifica" que toma como argumento a célula anterior RC[-1]
    ActiveCell.Formula2R1C1 = "=classifica(RC[-1])"
    'Faz-se um autocompletar partindo da célula J7 e indo para J16
    Selection.AutoFill Destination:=Range("J7:J16")
    'Seleciona-se a célula J17 para sair fora da área de seleção
    Range("J17").Select
    'Mostra-se o msgbox abaixo para dizer que o processamento está finalizado
    MsgBox "Obrigado por investir com RodrigoInvest!"

'Fim da subrotina
End Sub
Sub deletaRodrigo()
'
' deletaRodrigo Macro
' Esta macro apaga os dados da tabela de investimento
'
' Atalho do teclado: Ctrl+Shift+D
'
    'Seleciona-se o range entre G7 e J16
    Range("G7:J16").Select
    'Deleta-se o conteudo selecionado
    Selection.ClearContents
    'Seleciona-se a célula J17 para sair fora da área de seleção
    Range("J17").Select
    
End Sub
' FATEC IPIRANGA
' ADS Noturno
' Programação em Microinformática
' Grupo 6
' Autor: Rodrigo Sanches Dias - RA: 2040482023037

'Começa-se a definição da função com a palavra reservada "Function", seguida do nome da função, aqui "ganhoCapital",
'que tem como parâmetros "capital", "ratbBruta" e "ir", que são, respectivamente o valor do capital inicial investido no CDB,
'a rentabilidade bruta obtida no ano, e o valor pago de IR em cima da operação
Function ganhoCapital(capital As Double, rentabBruta As Double, ir As Double)

'o ganho de capital é então definido abaixo, no qual soma-se o valor do capital inicial com o da rentabilidade bruta e retira-se o valor pago em imposto de renda
ganhoCapital = (capital + rentabBruta) - ir

'Fim da definição da função com a palavra reservada "End Function"
End Function

'Definição da função "rentabLiquida", que tem como parametro o capital investido inicialmente "capitalInvest" e o retorno finaceiro obtido "retorno"
Function rentabLiquida(capitalInvest As Double, retorno As Double) As Double

'A rentabilidade liquida é definida como sendo uma relação entre o retorno financeiro obtido e o capital investido inicialmente
'retira-se 1 para mostrar apenas o ganho descontado do montante inicial.
rentabLiquida = (retorno / capitalInvest) - 1


End Function

'Definição da função "Classifica" para classificar os investimentos de acordo com o retorno financeiro que eles proporcionam
'tal função requer "rentLiquida" como parâmetro, um double, e retorna um string
Function classifica(rentLiquida As Double) As String

'A função faz um select case baseado no valor de "rentLiquida"
Select Case rentLiquida
    'Caso valor entre -10000 a 0.01, o grau de investimento é D (Baixo retorno)
    Case -10000 To 0.01: classifica = "D"
    'Caso valor entre 0.01 e 0.02, o grau de investimento é C
    Case 0.01 To 0.02: classifica = "C"
    'e assim por diante
    Case 0.02 To 0.03: classifica = "C+"
    Case 0.03 To 0.04: classifica = "B-"
    Case 0.04 To 0.05: classifica = "B"
    Case 0.05 To 0.06: classifica = "B+"
    Case 0.06 To 0.07: classifica = "A-"
    Case 0.07 To 0.08: classifica = "A"
    Case 0.08 To 10000: classifica = "A+"
'fim do select case
End Select

'fim da function
End Function
