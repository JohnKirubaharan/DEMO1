' Factorial function in VBScript
Function Factorial(n)
    If Not IsNumeric(n) Or n < 0 Then
        Err.Raise vbObjectError + 1, , "Input must be a non-negative integer."
    End If
    If n = 0 Or n = 1 Then
        Factorial = 1
    Else
        Factorial = 1
        For i = 2 To n
            Factorial = Factorial * i
        Next
    End If
End Function
