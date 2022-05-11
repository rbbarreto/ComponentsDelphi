object frmHome: TfrmHome
  Left = 0
  Top = 0
  Caption = 'Criando Panel'
  ClientHeight = 571
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 570
    Height = 65
    Align = alTop
    Caption = 'Create Runtime Panel'
    TabOrder = 0
    OnClick = Panel1Click
    ExplicitWidth = 572
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 65
    Width = 570
    Height = 506
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 184
    ExplicitTop = 312
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
end
