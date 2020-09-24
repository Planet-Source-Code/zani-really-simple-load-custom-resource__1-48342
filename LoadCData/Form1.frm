VERSION 5.00
Object = "{D27CDB6B-AE6D-11CF-96B8-444553540000}#1.0#0"; "SWFLASH.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4575
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3165
   LinkTopic       =   "Form1"
   ScaleHeight     =   4575
   ScaleWidth      =   3165
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   $"Form1.frx":0000
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3135
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   2895
   End
   Begin ShockwaveFlashObjectsCtl.ShockwaveFlash SF 
      Height          =   8295
      Left            =   -3600
      TabIndex        =   0
      Top             =   0
      Width           =   10335
      _cx             =   18230
      _cy             =   14631
      Movie           =   "c:\windows\desktop\www.swf"
      Src             =   "c:\windows\desktop\www.swf"
      WMode           =   "Transparent"
      Play            =   0   'False
      Loop            =   -1  'True
      Quality         =   "High"
      SAlign          =   ""
      Menu            =   0   'False
      Base            =   ""
      Scale           =   "ShowAll"
      DeviceFont      =   0   'False
      EmbedMovie      =   0   'False
      BGColor         =   ""
      SWRemote        =   ""
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Dim M() As Byte
M = LoadResData(1, "SWF")
Open "c:\windows\desktop\m.swf" For Binary Access Write As 1
Put #1, , M
Close 1
SF.Movie = "c:\windows\desktop\m.swf"
End Sub

Private Sub Form_Unload(Cancel As Integer)
Kill "c:\windows\desktop\m.swf"
End Sub
