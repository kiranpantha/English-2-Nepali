VERSION 5.00
Begin VB.Form main 
   Caption         =   "English 2 Nepali"
   ClientHeight    =   8505
   ClientLeft      =   60
   ClientTop       =   750
   ClientWidth     =   10545
   FillColor       =   &H00FFFFFF&
   Icon            =   "home.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Picture         =   "home.frx":FC8A
   ScaleHeight     =   8505
   ScaleWidth      =   10545
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   9120
      Top             =   5160
   End
   Begin VB.CommandButton go 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      Default         =   -1  'True
      Height          =   855
      Left            =   7080
      Picture         =   "home.frx":1613E
      Style           =   1  'Graphical
      TabIndex        =   3
      ToolTipText     =   "Go !"
      Top             =   2520
      Width           =   975
   End
   Begin VB.TextBox wordbyuser 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   855
      Left            =   240
      TabIndex        =   0
      Top             =   2520
      Width           =   6735
   End
   Begin VB.Label regornot 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Gauri"
         Size            =   12
         Charset         =   2
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   10485
      TabIndex        =   5
      Top             =   0
      Width           =   45
   End
   Begin VB.Label dbver 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   0
      TabIndex        =   4
      Top             =   120
      Width           =   90
   End
   Begin VB.Shape Shape2 
      Height          =   1095
      Left            =   120
      Top             =   2400
      Width           =   8055
   End
   Begin VB.Label meaning 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   2535
      Left            =   120
      TabIndex        =   2
      Top             =   4320
      Width           =   7935
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      X1              =   120
      X2              =   8040
      Y1              =   4320
      Y2              =   4320
   End
   Begin VB.Shape textsize 
      BorderColor     =   &H0000FF00&
      Height          =   3255
      Left            =   120
      Top             =   3600
      Width           =   7935
   End
   Begin VB.Label word 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Welcome to English 2 Nepali"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   615
      Left            =   120
      TabIndex        =   1
      Top             =   3720
      Width           =   7935
   End
   Begin VB.Menu set 
      Caption         =   "Setting"
      Index           =   1
      Begin VB.Menu exit 
         Caption         =   "E&xit"
         Index           =   2
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu about 
      Caption         =   "About"
      Index           =   1
      Begin VB.Menu e2n 
         Caption         =   "About E2N"
         Shortcut        =   ^A
      End
   End
End
Attribute VB_Name = "main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim yesorno
Private Sub e2n_Click()
aboute2n.Show
End Sub

Private Sub exit_Click(Index As Integer)
End
End Sub

Private Sub Form_Load()
On Error GoTo last
If Dir("c:/windows/fonts/preeti.ttf") = "" Then MsgBox "Error in font"
Open App.Path & "\required\opened.e2n" For Input As #1
Input #1, dataver$
Close
Open App.Path & "\required\opened.e2n" For Output As #1
Write #1, "closed"
Close
If dataver$ <> "open" Then
MsgBox "This application cannot be started directly so please run via e2n.exe"
End
End If
meaning.FontSize = 12
Open App.Path & "\required\DBver.e2n" For Input As #1
Input #1, dataver$
Close
Open App.Path & "\required\type.e2n" For Input As #1
Input #1, reg$
Close
dbver.Caption = dataver$
regornot = reg$
meaning = "It is a useful software by kiran pantha." & Chr$(10) & "It helps us to convert English word to their corresponding Nepali meaning" & Chr$(10) & "For contact with developer just Log on to http://kiranpantha.tk" & Chr(10) & "Email : " & Chr$(10) & "kiran@kiranpantha.tk" & Chr$(10) & "kiranpanth@gmail.com" & Chr$(10) & "kiranpanth@facebook.com"
GoTo lastt
last:
Call errorsub(Err.Number)
lastt:
End Sub
Private Sub go_Click()
Dim counter
counter = 0
If wordbyuser.Text <> "" Then
check$ = LCase(Left$(wordbyuser.Text, 1))
On Error GoTo errortext
If Dir(App.Path & "/Required/" & check$ & ".e2n") = "" Then GoTo endofpro
Open App.Path & "/Required/" & check$ & ".e2n" For Input As #1
Do While Not EOF(1)
Input #1, wordfromfile$, meanfromfile$
counter = counter + 1
If LCase$(wordfromfile$) = LCase$(wordbyuser.Text) Then
word.Caption = wordfromfile$
meaning.Font = "preeti"
meaning.FontSize = "25"
meaning.Caption = meanfromfile$
task.Show: task.status.Caption = "Showing search about " & wordbyuser.Text
GoTo endofpro
Else
word.Caption = "Sorry! No Result found for " & wordbyuser.Text
meaning.Font = "Arial"
meaning.FontSize = "15"
meaning.Caption = "Sorry! the given text was incorrect or not present in our database." & Chr(10) & "Please update English 2 Nepali from http;//kiranpantha.tk" & Chr(10) & "If you have new word which is no present in English 2 neplali then E-mail it to e2n@kiranpantha.tk"
task.Show: task.status.Caption = "No Result found about " & wordbyuser.Text
End If
Loop
Else
word.Caption = "Sorry! You did a mistake in entering the word"
meaning.Font = "Arial"
meaning.FontSize = "15"
meaning.Caption = "You pressed a key without typing the word retype the word to get the meaning of the written word"
task.Show: task.status.Caption = "Your mistake"
End If
GoTo endofpro
errortext:
MsgBox "Error in accessing database" & Chr(10) & Chr(10) & Chr(10) & "Error in the character on " & Chr(10) & " line: " & counter & " text:1" & Chr(10) & "Unexpected word : " & wordbyuser & Chr(10) & "No wildcardkey are avialable", vbInformation, "Goto www.kiranpantha.tk"
endofpro:
Close
End Sub

Private Sub Timer1_Timer()
On Error GoTo error
GoTo last
error:
MsgBox ""
last:
End Sub
