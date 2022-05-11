object frmHome: TfrmHome
  Left = 0
  Top = 0
  Caption = 'CheckBox'
  ClientHeight = 459
  ClientWidth = 653
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Montserrat Black'
  Font.Style = [fsBold]
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 21
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 653
    Height = 97
    Align = alTop
    Caption = 'Criando o CheckBox Em RunTime'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Montserrat'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 97
    Width = 653
    Height = 362
    Align = alClient
    TabOrder = 1
  end
end
