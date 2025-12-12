Attribute VB_Name = "Module1"
Sub MakeItPretty()
    Dim ws As Worksheet
    Dim rng As Range
    
    ' Set the variable to the current active sheet
    Set ws = ActiveSheet
    
    ' Identify the range of data being used (from A1 to the last cell)
    Set rng = ws.UsedRange
    
    ' 1. AutoFit Columns
    rng.Columns.AutoFit
    
    ' 2. Format Header Row (Row 1)
    With ws.Rows(1)
        .Interior.Color = RGB(0, 51, 102) ' Dark Blue
        .Font.Color = RGB(255, 255, 255)  ' White
        .Font.Bold = True
    End With
    
    ' 3. Freeze Top Row
    ActiveWindow.SplitRow = 1
    ActiveWindow.FreezePanes = True
    
    ' 4. Add AutoFilter (if not already on)
    If Not ws.AutoFilterMode Then
        ws.Rows(1).AutoFilter
    End If
    
    ' 5. Add Borders to the data
    rng.Borders.LineStyle = xlContinuous
    
    MsgBox "Report Cleaned Successfully!", vbInformation, "AI Assistant"
End Sub
