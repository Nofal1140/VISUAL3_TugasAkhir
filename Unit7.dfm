object Form7: TForm7
  Left = 203
  Top = 156
  Width = 928
  Height = 480
  Caption = 'Form7'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 176
    Top = 40
    Width = 259
    Height = 18
    Caption = 'LOGIN KE MENU PERPUSATAKAAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 176
    Top = 88
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object lbl3: TLabel
    Left = 176
    Top = 128
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object edtuser: TEdit
    Left = 256
    Top = 88
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object edtpass: TEdit
    Left = 256
    Top = 120
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object btnL: TButton
    Left = 176
    Top = 160
    Width = 257
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = btnLClick
  end
end
