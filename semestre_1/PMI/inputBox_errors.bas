Sub cadastro_equipe6()

    Dim titulo As String
    Dim texto As String
    Dim valor_padrao As Integer
    Dim qtddAlunos As String
    Dim qtddAlunos_int As Double
    Dim linha As Integer
    Dim contador As Integer
    Dim ra As Variant
    Dim nome As String
    Dim n1, n2 As Variant
    Dim n1_double As Double
    Dim n2_double As Double
    Dim media As Double
    
    
    
    
    titulo = "Cadastro"
    texto = "Quantos alunos você deseja cadastrar?"
    valor_padrao = 1
repete:
    qtddAlunos = InputBox(texto, titulo, valor_padrao)
    If (StrPtr(qtddAlunos) = 0) Then
        MsgBox "Operação cancelada!"
    ElseIf qtddAlunos = "" Then
        MsgBox "Campo Vazio! Por favor, digite um número inteiro positivo."
        GoTo repete
    ElseIf IsNumeric(qtddAlunos) Then
        If qtddAlunos > 0 Then
            qtddAlunos_int = qtddAlunos
            If Fix(qtddAlunos_int) = qtddAlunos_int Then
            Else
                MsgBox "Por favor, digite um número inteiro."
                GoTo repete
            End If
        Else
            MsgBox "Por favor, digite um número positivo."
            GoTo repete
        End If
    Else
        MsgBox "Não podemos aceitar letras ou caracteres especiais, o valor tem que ser um número."
        GoTo repete
    End If
    

    linha = 4
    For contador = linha To (qtddAlunos_int + linha - 1)

    Do While Not (Cells(linha, 1) = "")
        linha = linha + 1
    Loop

repeteRA:
        ra = InputBox("Informe o RA do aluno (5 dígitos):")
        If (StrPtr(ra) = 0) Then
            MsgBox "Operação cancelada!"
        ElseIf ra = "" Then
            MsgBox "Campo Vazio! Por favor, digite um número inteiro positivo."
            GoTo repeteRA
        ElseIf IsNumeric(ra) Then
            If ra > 0 Then
                If Len(ra) <> 5 Then
                    MsgBox "Esperado exatamente 5 dígitos"
                    GoTo repeteRA
                End If
            Else
                MsgBox "Por favor, digite um número positivo."
                GoTo repeteRA
            End If
        Else
            MsgBox "Não podemos aceitar letras ou caracteres especiais, o valor tem que ser um número."
            GoTo repeteRA
        End If
        ThisWorkbook.Worksheets("CadMedia").Cells(linha, 1).Value = ra
        
        
        
repeteNome:
        nome = InputBox("Informe o nome do aluno:")
        If (StrPtr(nome) = 0) Then
            MsgBox "Operação cancelada!"
        ElseIf nome = "" Then
            MsgBox "Campo Vazio! Por favor, digite um número inteiro positivo."
            GoTo repeteNome
        ElseIf IsNumeric(nome) Then
            MsgBox "Campo não pode ser número!"
            GoTo repeteNome
        End If
        ThisWorkbook.Worksheets("CadMedia").Cells(linha, 2).Value = nome
        
        
repeteN1:
        n1 = InputBox("Informe a primeira nota do aluno:")
        If (StrPtr(n1) = 0) Then
            MsgBox "Operação cancelada!"
        ElseIf n1 = "" Then
            MsgBox "Campo Vazio! Por favor, digite um número inteiro positivo."
            GoTo repeteN1
        ElseIf IsNumeric(n1) Then
            If n1 > 0 Then
                n1_double = n1
            Else
                MsgBox "Por favor, digite um número positivo."
                GoTo repeteN1
            End If
        Else
            MsgBox "Não podemos aceitar letras ou caracteres especiais, o valor tem que ser um número."
            GoTo repeteN1
        End If
        ThisWorkbook.Worksheets("CadMedia").Cells(linha, 3).Value = n1_double
        
repeteN2:
        n2 = InputBox("Informe a segunda nota do aluno:")
        If (StrPtr(n2) = 0) Then
            MsgBox "Operação cancelada!"
        ElseIf n2 = "" Then
            MsgBox "Campo Vazio! Por favor, digite um número inteiro positivo."
            GoTo repeteN2
        ElseIf IsNumeric(n2) Then
            If n2 > 0 Then
                n2_double = n2
            Else
                MsgBox "Por favor, digite um número positivo."
                GoTo repeteN2
            End If
        Else
            MsgBox "Não podemos aceitar letras ou caracteres especiais, o valor tem que ser um número."
            GoTo repeteN2
        End If
        ThisWorkbook.Worksheets("CadMedia").Cells(linha, 4).Value = n2_double

        media = (n1_double + n2_double) / 2
        
        ThisWorkbook.Worksheets("CadMedia").Cells(linha, 5).Value = media
        
    Next
                
End Sub

Sub deleta()

    Range("A4:E29").Select
    Selection.ClearContents
    Range("E30").Select
End Sub
