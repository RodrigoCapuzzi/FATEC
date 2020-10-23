' FATEC IPIRANGA
' ADS Noturno
' Programação em Microinformática
' Grupo 6
' Autor: Rodrigo Sanches Dias - RA: 2040482023037

'Inicio da subrotina, cujo nome é "rodrigo_preenche" e não pede nenhum parâmetro
Sub rodrigo_preenche()
'
' rodrigo_preenche Macro
'
' Esta macro visa preencher os valores da tabela de reservas de hotel e aéreo da aba 'Rodrigo IF com lógico E'
' A regra de negócio é, que se o cliente gastou mais de 2000 reais com hospedagem E mais de 100 reais com aéreo,
' então o cliente ganha um desconto de 5% em cima do valor total do pacote.
'
' Atalho do teclado: Ctrl+Shift+R
'
    'Select seleciona o objeto, aqui no caso o Range (célula) E7.
    'Range pode ser uma célula, uma linha, uma coluna, uma seleção de células contendo um ou mais blocos contíguos de células ou um intervalo 3D.
    Range("E7").Select
    'ActiveCell retorna a célula ativa na janela ativa, aqui no caso ainda é a célula E7.
    'FormulaR1C1 retorna ou define a fórmula para o objeto, usando notação de estilo R1C1 no idioma da macro,
    'aqui no caso, é a fórmula do procv (vlookup), que definiremos depois do sinal de igualdade
    'VLOOKUP procura um valor na primeira coluna de uma matriz de tabela e retorna um valor na mesma linha de outra coluna da matriz da tabela.
    'Aqui no caso, procura o conteúdo de RC[-2] na aba "Rodrigo - Planilha de apoio", no intervalo entre R3C2:R6C3 e retorna o conteúdo exato da coluna 2.
    ActiveCell.FormulaR1C1 = _
        "=VLOOKUP(RC[-2],'Rodrigo - Planilha de apoio'!R3C2:R6C3,2,FALSE)"
    'AutoFill executa um AutoPreenchimento nas células no intervalo especificado, aqui no caso no intervalo entre E7 e E11.
    Selection.AutoFill Destination:=Range("E7:E11")
    'Seleciono a célula F7
    Range("F7").Select
    'Na célula ativa, escreve a fórmula do VLOOKUP, na qual procura a info da célula RC[-2] no intervalo entre R3C5:R5C6 da aba
    '"Rodrigo - Planilha de apoio" e retorna o conteudo exato da coluna 2
    ActiveCell.FormulaR1C1 = _
        "=VLOOKUP(RC[-2],'Rodrigo - Planilha de apoio'!R3C5:R5C6,2,FALSE)"
    'Faz um autocompletar com o conteudo da celula ativa no intervalo entre F7 e F11
    Selection.AutoFill Destination:=Range("F7:F11")
    'Seleciona a célula G7
    Range("G7").Select
    'Na celula ativa, escreve a formula do IF, na qual, se o conteudo de RC[-2] for maior que 2000, E o conteudo de RC[-1] for maior que 100,
    'o cliente ganha desconto de 5%, ou seja, calula-se 0.05 vezes o valor de RC[1], se a condição não for cumprida, o valor inputado é 0 (zero de desconto)
    ActiveCell.FormulaR1C1 = "=IF(AND(RC[-2]>2000,RC[-1]>100),RC[1]*0.05,0)"
    'Faz-se um autocompletar no range ente G7 e G11
    Selection.AutoFill Destination:=Range("G7:G11")
    'Seleciona-se a célula H7
    Range("H7").Select
    'Na célula ativa faz-se o conteudo de RC[-3] mais o conteudo de RC[-2]
    ActiveCell.FormulaR1C1 = "=RC[-3]+RC[-2]"
    'Faz-se um autocompletar entre H7 e H11
    Selection.AutoFill Destination:=Range("H7:H11")
    'Seleciona-se a célula I7
    Range("I7").Select
    'Na célula ativa faz-se o conteúdo de RC[-1] menos o conteudo de RC[-2]
    ActiveCell.FormulaR1C1 = "=RC[-1]-RC[-2]"
    'Atocompleta-se o conteudo entre I7 e I11
    Selection.AutoFill Destination:=Range("I7:I11")
    'Seleciona-se I16 para sair fora da área de seleção
    Range("I16").Select

'Fim da subrotina
End Sub
'inicio da subrotina "rodrigo_deleta
Sub rodrigo_deleta()
'
' rodrigo_deleta Macro
' Esta macro visa deletar o preenchimento da tabela de reservas da aba 'Rodrigo - IF com lógico E'
'
' Atalho do teclado: Ctrl+Shift+D
'
    'seleciona-se o range entre E7 e I11
    Range("E7:I11").Select
    'Deleta-se o conteúdo da seleção
    Selection.ClearContents
    'seleciona I19 para sair fora da área de seleção
    Range("I19").Select
    
End Sub
