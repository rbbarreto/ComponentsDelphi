object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 447
  ClientWidth = 824
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
    Width = 824
    Height = 73
    Align = alTop
    Caption = 'Criando componente ComboBox'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
    ExplicitTop = -6
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 73
    Width = 824
    Height = 374
    Align = alClient
    TabOrder = 1
    ExplicitTop = 54
    ExplicitWidth = 767
    ExplicitHeight = 393
  end
  object Button2: TButton
    Left = 24
    Top = 26
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 105
    Top = 28
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
end
