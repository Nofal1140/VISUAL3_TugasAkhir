object Form3: TForm3
  Left = 192
  Top = 125
  Width = 928
  Height = 487
  Caption = 'Form Peminjaman'
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
    Left = 128
    Top = 48
    Width = 40
    Height = 13
    Caption = 'ID BUKU'
  end
  object lbl2: TLabel
    Left = 128
    Top = 88
    Width = 86
    Height = 13
    Caption = 'TANGGAL PINJAM'
  end
  object lbl3: TLabel
    Left = 128
    Top = 128
    Width = 91
    Height = 13
    Caption = 'TANGGAL KEMBALI'
  end
  object lbl4: TLabel
    Left = 128
    Top = 168
    Width = 63
    Height = 13
    Caption = 'ID ANGGOTA'
  end
  object lbl5: TLabel
    Left = 304
    Top = 8
    Width = 112
    Height = 19
    Caption = 'PEMINJAMAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtbuku: TEdit
    Left = 240
    Top = 48
    Width = 249
    Height = 21
    TabOrder = 0
  end
  object edtpinjam: TEdit
    Left = 240
    Top = 88
    Width = 249
    Height = 21
    TabOrder = 1
  end
  object edtkembali: TEdit
    Left = 240
    Top = 128
    Width = 249
    Height = 21
    TabOrder = 2
  end
  object edtanggota: TEdit
    Left = 240
    Top = 168
    Width = 249
    Height = 21
    TabOrder = 3
  end
  object btnsimpan: TButton
    Left = 128
    Top = 216
    Width = 105
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btnsimpanClick
  end
  object btnubah: TButton
    Left = 240
    Top = 216
    Width = 105
    Height = 25
    Caption = 'Ubah'
    TabOrder = 5
    OnClick = btnubahClick
  end
  object btnhps: TButton
    Left = 352
    Top = 216
    Width = 105
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = btnhpsClick
  end
  object dbgrd1: TDBGrid
    Left = 128
    Top = 248
    Width = 449
    Height = 169
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btnbaru: TButton
    Left = 472
    Top = 216
    Width = 105
    Height = 25
    Caption = 'Baru'
    TabOrder = 8
    OnClick = btnbaruClick
  end
  object btnkeluar: TButton
    Left = 488
    Top = 416
    Width = 89
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 9
    OnClick = btnkeluarClick
  end
  object btn1: TButton
    Left = 128
    Top = 416
    Width = 129
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 10
    OnClick = btn1Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = '2110010052_visual3'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\Tugas Akhir Visu' +
      'al 3\libmysql.dll'
    Left = 88
    Top = 336
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from  tabel_peminjaman')
    Params = <>
    Left = 88
    Top = 384
  end
  object ds1: TDataSource
    AutoEdit = False
    DataSet = zqry1
    Left = 88
    Top = 296
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45259.473831261600000000
    ReportOptions.LastChange = 45259.478433310200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 88
    Top = 248
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 317.480520000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'PEMINJAMAN')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 166.299320000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 49.133890000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'id_pinjam'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."id_pinjam"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 102.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'id_buku'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."id_buku"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 196.535560000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'tgl_pinjam'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."tgl_pinjam"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 381.732530000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'tgl_kembali'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."tgl_kembali"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 551.811380000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'id_anggota'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."id_anggota"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 86.929190000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 49.133890000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 102.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID BUKU')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 196.535560000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL PINJAM')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 381.732530000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL KEMABALI')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 551.811380000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID ANGGOTA')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 88
    Top = 208
  end
end
