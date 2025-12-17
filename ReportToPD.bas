Attribute VB_Name = "Module1"
' Module: modExportPDF
Sub ApplyReportFormatting()
    Dim sht As Worksheet
    For Each sht In ThisWorkbook.Worksheets
        With sht
            .PageSetup.CenterHeader = "&""Arial,Bold""&14 Company Name - " & .Name
            .PageSetup.CenterFooter = "Prepared: " & Format(Date, "dd-mmm-yyyy")
            .Cells.Font.Name = "Calibri"
            .Cells.Font.Size = 10
            .Columns.AutoFit
        End With
    Next sht
End Sub

Sub ExportSelectedSheetsToPDF()
    Dim pdfPath As String
    pdfPath = ThisWorkbook.Path & Application.PathSeparator & "MonthlyPack_" & Format(Date, "yyyymmdd") & ".pdf"
    ' Example: export all visible sheets
    Dim arr() As String, i As Long
    ReDim arr(0 To ThisWorkbook.Worksheets.Count - 1)
    For i = 1 To ThisWorkbook.Worksheets.Count
        arr(i - 1) = ThisWorkbook.Worksheets(i).Name
    Next i
    ThisWorkbook.Sheets(arr).Select
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, Filename:=pdfPath, Quality:=xlQualityStandard, _
        IncludeDocProperties:=True, IgnorePrintAreas:=False, OpenAfterPublish:=False
    MsgBox "PDF exported to:" & vbCrLf & pdfPath, vbInformation
End Sub


