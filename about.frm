VERSION 5.00
Begin VB.Form aboute2n 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   4875
   ClientLeft      =   3315
   ClientTop       =   3285
   ClientWidth     =   8925
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   ForeColor       =   &H0000C000&
   Icon            =   "about.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4875
   ScaleMode       =   0  'User
   ScaleWidth      =   8960.237
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cancel 
      BackColor       =   &H00E0E0E0&
      Cancel          =   -1  'True
      Caption         =   "Ok"
      Default         =   -1  'True
      DisabledPicture =   "about.frx":000C
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   0
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   4440
      UseMaskColor    =   -1  'True
      Width           =   9015
   End
   Begin VB.Image Image1 
      Height          =   1560
      Left            =   120
      Picture         =   "about.frx":1F0E
      Stretch         =   -1  'True
      Top             =   0
      Width           =   1200
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   $"about.frx":11B98
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   1575
      Left            =   0
      TabIndex        =   4
      Top             =   3000
      Width           =   5055
   End
   Begin VB.Image my 
      Height          =   4545
      Left            =   5040
      Picture         =   "about.frx":11D0A
      Top             =   -120
      Width           =   3885
   End
   Begin VB.Label Ver 
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
      Height          =   615
      Left            =   1560
      TabIndex        =   3
      Top             =   480
      Width           =   7695
   End
   Begin VB.Label info 
      BackStyle       =   0  'Transparent
      Caption         =   $"about.frx":14928
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   3255
      Left            =   0
      TabIndex        =   2
      Top             =   1560
      Width           =   5055
   End
   Begin VB.Label word 
      BackStyle       =   0  'Transparent
      Caption         =   " English 2 Nepali"
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
      Left            =   1440
      TabIndex        =   1
      Top             =   0
      Width           =   7935
   End
   Begin VB.Shape Shape1 
      FillStyle       =   0  'Solid
      Height          =   4935
      Left            =   8880
      Top             =   0
      Width           =   1575
   End
End
Attribute VB_Name = "aboute2n"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a, b
Option Explicit

Private Sub cancel_Click()
Unload Me
End Sub

Private Sub Form_Load()
Ver = "Version: " & App.Major & "." & App.Minor & "." & App.Revision


End Sub

