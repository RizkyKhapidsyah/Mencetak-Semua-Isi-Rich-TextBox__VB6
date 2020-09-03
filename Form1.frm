VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form1 
   Caption         =   "Mencetak Semua Isi Rich TextBox"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   975
      Left            =   720
      TabIndex        =   1
      Top             =   600
      Width           =   3375
      _ExtentX        =   5953
      _ExtentY        =   1720
      _Version        =   393217
      Enabled         =   -1  'True
      TextRTF         =   $"Form1.frx":0000
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   1200
      TabIndex        =   0
      Top             =   2160
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
  Printer.FontName = "Courier New"   'Jenis huruf
  Printer.FontSize = "9"             'Ukuran huruf
  Printer.Print RichTextBox1.Text    'Cetak seluruhnya
                                     'ke printer
  Printer.EndDoc                     'Akhir pencetakan
End Sub


