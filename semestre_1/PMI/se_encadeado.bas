Sub preenche12()
'
' preenche12 Macro
' preenche
'

'
    Range("D4").Select
    ActiveCell.FormulaR1C1 = _
        "=IF(RC[-2]=0,10%,IF(RC[-2]=1,8%,IF(RC[-2]=2,6%,IF(RC[-2]=3,4%,IF(RC[-2]<=5,2%,1%)))))"
    Range("D4").Select
    Selection.AutoFill Destination:=Range("D4:D16"), Type:=xlFillDefault
    Range("D4:D16").Select
    Range("D18").Select
End Sub
