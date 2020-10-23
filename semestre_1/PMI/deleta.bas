Sub deletaTudo()
'
' deletaTudo Macro
' Esta macro tem como finalidade deletar o preenchimento da coluna Total da tabela
'

'
    'A linha abaixo seleciona a célula C4
    Range("C4").Select
    'A linha abaixo faz uma seleção da célula inicial selecionada até a última celula com informações contando da célula selecionada para baixo
    Range(Selection, Selection.End(xlDown)).Select
    'A linha abaixo deleta o conteúdo selecionado
    Selection.ClearContents
    'A linha abaixo mando o cursor selecionar a célula E5 para sair da área de seleção
    Range("E5").Select

'A linha abaixo é uma palavra reservada que indica o fim da subrotina
End Sub
