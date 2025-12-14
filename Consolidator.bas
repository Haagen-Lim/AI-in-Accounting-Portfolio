Attribute VB_Name = "Module1"
Sub ConsolidateFiles()
    Dim folderPath As String
    Dim fileName As String
    Dim wbSource As Workbook
    Dim wsSource As Worksheet
    Dim wsMaster As Worksheet
    Dim nextRow As Long
    Dim fileCount As Integer
    
    ' Set the Master sheet (where the macro is running)
    Set wsMaster = ThisWorkbook.Sheets(1)
    
    ' 1. Open Folder Picker
    With Application.FileDialog(msoFileDialogFolderPicker)
        .Title = "Select the folder containing the files to merge"
        If .Show = -1 Then
            folderPath = .SelectedItems(1) & "\"
        Else
            Exit Sub ' User cancelled
        End If
    End With
    
    ' Speed up the macro (stop screen flickering)
    Application.ScreenUpdating = False
    
    ' 2. Find first Excel file
    fileName = Dir(folderPath & "*.xlsx")
    
    ' 3. Loop through files
    Do While fileName <> ""
        ' Open the file
        Set wbSource = Workbooks.Open(folderPath & fileName)
        Set wsSource = wbSource.Sheets(1)
        
        ' Find the next empty row in Master sheet
        nextRow = wsMaster.Cells(wsMaster.Rows.Count, "A").End(xlUp).Row + 1
        
        ' Copy data (Assuming headers are only in the first file, or just copying all)
        ' For simplicity, we copy the whole UsedRange.
        wsSource.UsedRange.Copy Destination:=wsMaster.Cells(nextRow, 1)
        
        ' Close source file
        wbSource.Close SaveChanges:=False
        
        ' Counter and next file
        fileCount = fileCount + 1
        fileName = Dir
    Loop
    
    ' Turn screen back on
    Application.ScreenUpdating = True
    
    MsgBox "Success! Consolidated " & fileCount & " files.", vbInformation
End Sub
