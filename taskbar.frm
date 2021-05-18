VERSION 5.00
Begin VB.Form task 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   2550
   ClientLeft      =   10545
   ClientTop       =   45
   ClientWidth     =   4965
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "taskbar.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "taskbar.frx":000C
   ScaleHeight     =   2550
   ScaleWidth      =   4965
   ShowInTaskbar   =   0   'False
   Begin VB.Timer close 
      Interval        =   100
      Left            =   4320
      Top             =   2040
   End
   Begin VB.Label status 
      Alignment       =   2  'Center
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
      Height          =   1815
      Left            =   0
      TabIndex        =   1
      Top             =   720
      Width           =   5055
   End
   Begin VB.Label word 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "English 2 Nepali Notification's"
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
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   4935
   End
End
Attribute VB_Name = "task"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub close_Timer()
Me.Height = Me.Height - 100
If Me.Height <= 90 Then Unload Me
End Sub

Private Sub Form_Load()
Me.Top = Screen.Height - Me.Height + 100
Me.Left = Screen.Width - Me.Width
End Sub

