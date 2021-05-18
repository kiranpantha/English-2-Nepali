VERSION 5.00
Begin VB.Form main 
   BackColor       =   &H000000C0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Input"
   ClientHeight    =   6660
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10005
   Icon            =   "main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Palette         =   "main.frx":FC8A
   Picture         =   "main.frx":243E8
   ScaleHeight     =   6660
   ScaleWidth      =   10005
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H0000FF00&
      Caption         =   "Go!!!!!!"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   7320
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   5400
      Width           =   2055
   End
   Begin VB.TextBox usermean 
      BackColor       =   &H000000FF&
      BeginProperty Font 
         Name            =   "Preeti"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2625
      Left            =   1320
      MultiLine       =   -1  'True
      TabIndex        =   1
      Top             =   2640
      Width           =   8415
   End
   Begin VB.TextBox userword 
      BackColor       =   &H000000FF&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   495
      Left            =   1320
      TabIndex        =   0
      Top             =   2040
      Width           =   8415
   End
   Begin VB.Label savedon 
      BackColor       =   &H00FFFFC0&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   1575
      Left            =   5520
      TabIndex        =   5
      Top             =   240
      Width           =   3375
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Meaning"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   2640
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Word:"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   2040
      Width           =   975
   End
End
Attribute VB_Name = "main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim wordchk$, meanchk$, chck
On Error GoTo lasterr:
Close
If userword.Text <> "" And usermean.Text <> "" Then
kiran = MsgBox("Do you want to add it?", vbYesNo, "Add")
If kiran = 6 Then
FileName$ = "required/" & Left$(userword.Text, 1) & ".e2n"
Open FileName$ For Input As #2
While Not EOF(2)
Input #2, wordchk$, meanchk$
If LCase(wordchk$) <> LCase(userword.Text) Then
chck = 1
Else
MsgBox "Word already listed in DB", vbInformation
Close
GoTo last
End If
Wend
Close
End If
End If
If chck = 1 Then
Open FileName$ For Append As #1
Write #1, userword.Text, usermean.Text
Close
savedon.Caption = "Data Saved on " & CStr(Time$)
End If
userword.Text = "": usermean.Text = ""
GoTo last
lasterr:
MsgBox "An Error occured during entering the word to the database." & Chr(10) & "Error type:" & Err.Number & Chr(10) & "Err des: " & Err.Description, vbCritical, "Error"
last:
End Sub
