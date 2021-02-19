VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Sheet3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Sub easyOption():

Dim ws As Worksheet
Dim total As Double
Dim j As Integer



For Each ws In Worksheets

    total = 0
    j = 0
    
    RowCount = Cells(Rows.Count, "A").End(xlUp).Row

    ws.Range("I1").Value = "Ticker"

    ws.Range("J1").Value = "Total Stock Volume"

    For i = 2 To RowCount
        If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then
        
            ws.Range("i" & 2 + j).Value = Cells(i, 1).Value
            
            ws.Range("J" & 2 + j).Value = total
            
            total = 0
            
            j = j + 1
            
        Else
            total = total + Cells(i, 7).Value
        End If
        
    Next i

Next ws
End Sub
