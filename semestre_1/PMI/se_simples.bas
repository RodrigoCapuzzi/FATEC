Sub Preenche10()
'
' Preenche10 Macro
' If da 10
'
' Atalho do teclado: Ctrl+Shift+P
'
    Range("D4").Select
    ActiveCell.FormulaR1C1 = "=IF(RC[-2]=0,""SIM"",""NÃO"")"
    Range("D4").Select
    Selection.AutoFill Destination:=Range("D4:D16")
    Range("D4:D16").Select
    Range("A18").Select
End Sub
