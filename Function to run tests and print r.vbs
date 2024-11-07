' Function to run tests and print results
Sub RunTests()
    TestFactorialZero()
    TestFactorialOne()
    TestFactorialPositiveInt()
    TestFactorialInvalidType()
    TestFactorialNegativeInt()
End Sub

Sub TestFactorialZero()
    Dim result
    On Error Resume Next
    result = Factorial(0)
    If result = 1 Then
        WScript.Echo "TestFactorialZero PASSED"
    Else
        WScript.Echo "TestFactorialZero FAILED"
    End If
    On Error GoTo 0
End Sub

Sub TestFactorialOne()
    Dim result
    On Error Resume Next
    result = Factorial(1)
    If result = 1 Then
        WScript.Echo "TestFactorialOne PASSED"
    Else
        WScript.Echo "TestFactorialOne FAILED"
    End If
    On Error GoTo 0
End Sub

Sub TestFactorialPositiveInt()
    Dim result
    On Error Resume Next
    result = Factorial(5)
    If result = 120 Then
        WScript.Echo "TestFactorialPositiveInt PASSED"
    Else
        WScript.Echo "TestFactorialPositiveInt FAILED"
    End If
    On Error GoTo 0
End Sub

Sub TestFactorialInvalidType()
    On Error Resume Next
    Call Factorial("a string")
    If Err.Number <> 0 Then
        WScript.Echo "TestFactorialInvalidType PASSED"
    Else
        WScript.Echo "TestFactorialInvalidType FAILED"
    End If
    Err.Clear
    On Error GoTo 0
End Sub

Sub TestFactorialNegativeInt()
    On Error Resume Next
    Call Factorial(-5)
    If Err.Number <> 0 Then
        WScript.Echo "TestFactorialNegativeInt PASSED"
    Else
        WScript.Echo "TestFactorialNegativeInt FAILED"
    End If
    Err.Clear
    On Error GoTo 0
End Sub

' Run all tests
RunTests()
