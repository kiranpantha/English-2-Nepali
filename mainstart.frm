VERSION 5.00
Begin VB.Form start 
   BorderStyle     =   0  'None
   ClientHeight    =   2430
   ClientLeft      =   210
   ClientTop       =   1365
   ClientWidth     =   7095
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "mainstart.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2430
   ScaleWidth      =   7095
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   6480
      Top             =   1920
   End
   Begin VB.Shape mover 
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   1920
      Top             =   1560
      Width           =   15
   End
   Begin VB.Label load 
      BackStyle       =   0  'Transparent
      Caption         =   "Loading..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   495
      Left            =   1920
      TabIndex        =   2
      Top             =   1080
      Width           =   5055
   End
   Begin VB.Shape Shape4 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   4
      Height          =   2415
      Left            =   0
      Top             =   0
      Width           =   7095
   End
   Begin VB.Shape mainmover 
      Height          =   375
      Left            =   1920
      Top             =   1560
      Width           =   4900
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000C000&
      X1              =   1800
      X2              =   1800
      Y1              =   960
      Y2              =   2400
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   4
      Height          =   2415
      Left            =   0
      Top             =   0
      Width           =   7095
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H0000FF00&
      Height          =   975
      Left            =   1800
      Top             =   0
      Width           =   5295
   End
   Begin VB.Image imgLogo 
      Height          =   2385
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   1815
   End
   Begin VB.Label word 
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
      Left            =   1800
      TabIndex        =   1
      Top             =   0
      Width           =   5175
   End
   Begin VB.Label ver 
      BackStyle       =   0  'Transparent
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
      Height          =   495
      Left            =   1800
      TabIndex        =   0
      Top             =   360
      Width           =   5055
   End
End
Attribute VB_Name = "start"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim i, getfrm$
Private Sub Form_Load()

imgLogo.Picture = Me.Icon
  ver.Caption = "Version " & App.Major & "." & App.Minor & "." & App.Revision
Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
Dim per
If mover.Width <= mainmover.Width Then
mover.Width = mover.Width + 200
Else
Open App.Path & "\required\opened.e2n" For Output As #1
Write #1, "open"
Close
Shell "maininterference.exe", vbNormalFocus
End
End If
per = Int((mover.Width / mainmover.Width) * 100)
If per > 0 And per <= 10 Then
load.Caption = "Loading  files: e2n.dll"

If Dir("e2n.dll") = "" Then
MsgBox "Error while loading dll file" & Chr(10) & "There is problem with e2n.dll Reinstall the product to use it" & Chr(10) & "-kiransoft", vbCritical, "Error"
End
End If
ElseIf per > 10 And per <= 20 Then
load.Caption = "Loading files: dictnarywordwithmean.dll"
If Dir("dictnarywordwithmean.dll") = "" Then
MsgBox "Error while loading dll file" & Chr(10) & "There is problem with dictnarywordwithmean.dll Reinstall the product to use it" & Chr(10) & "-kiransoft", vbCritical, "Error"
End
End If
ElseIf per > 20 And per <= 30 Then
load.Caption = "Loading files: theme.dll"
If Dir("theme.dll") = "" Then
MsgBox "Error while loading dll file" & Chr(10) & "There is problem with theme.dll Reinstall the product to use it" & Chr(10) & "-kiransoft", vbCritical, "Error"
End
End If
ElseIf per > 30 And per <= 40 Then
load.Caption = "Loading files: regdata.dll"

If Dir("regdata.dll") = "" Then
MsgBox "Error while loading dll file" & Chr(10) & "There is problem with regdata.dll Reinstall the product to use it" & Chr(10) & "-kiransoft", vbCritical, "Error", vbCritical, "Error"
End
End If
ElseIf per > 50 And per <= 99 Then
load.Caption = "Loading nessary files and data,starting E2N"
ElseIf per = 100 Then
load.Caption = "Loaded"
End If
End Sub
