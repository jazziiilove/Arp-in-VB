VERSION 5.00
Begin VB.Form Baran 
   Caption         =   "Baran"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.CommandButton Command1 
      Caption         =   "Test"
      Height          =   495
      Left            =   480
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   960
      Width           =   3015
   End
End
Attribute VB_Name = "Baran"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Const ForReading = 1
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile("\\139.179.33.186\arp\arp.txt", ForReading)

Dim arrFileLines()


i = 0
Do Until objFile.AtEndOfStream
ReDim Preserve arrFileLines(i)
arrFileLines(i) = objFile.ReadLine
i = i + 1
Loop
objFile.Close

Set objShell = CreateObject("Wscript.Shell")
objShell.Run ("arp -s " & arrFileLines(0))
End Sub

Private Sub Form_Load()
Const ForReading = 1
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile("\\139.179.33.186\arp\arp.txt", ForReading)

Dim arrFileLines()


i = 0
Do Until objFile.AtEndOfStream
ReDim Preserve arrFileLines(i)
arrFileLines(i) = objFile.ReadLine
i = i + 1
Loop
objFile.Close

Set objShell = CreateObject("Wscript.Shell")
objShell.Run ("arp -s " & arrFileLines(0))
End Sub
