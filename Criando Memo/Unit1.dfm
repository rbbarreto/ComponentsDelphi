object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 448
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 0
    Top = 0
    Width = 730
    Height = 81
    Align = alTop
    Caption = 'Criando Memo dinamico '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
    ExplicitTop = -6
    ExplicitWidth = 714
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 81
    Width = 730
    Height = 367
    Align = alClient
    TabOrder = 1
    ExplicitTop = 87
  end
end
