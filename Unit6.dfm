object Form6: TForm6
  Left = 200
  Top = 147
  Width = 928
  Height = 480
  Caption = 'Form Menu Perpustakaan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 80
    Top = 64
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Anggota1: TMenuItem
        Caption = 'Anggota'
        OnClick = Anggota1Click
      end
      object Buku1: TMenuItem
        Caption = 'Buku'
        OnClick = Buku1Click
      end
      object Pengembalian1: TMenuItem
        Caption = 'Peminjaman'
        OnClick = Pengembalian1Click
      end
      object Pengembalian2: TMenuItem
        Caption = 'Pengembalian'
        OnClick = Pengembalian2Click
      end
      object Denda1: TMenuItem
        Caption = 'Denda'
        OnClick = Denda1Click
      end
    end
  end
end
