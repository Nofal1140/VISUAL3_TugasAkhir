object Form4: TForm4
  Left = 191
  Top = 122
  Width = 928
  Height = 526
  Caption = 'Form Pengembalian'
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
    Width = 51
    Height = 13
    Caption = 'ID PINJAM'
  end
  object lbl5: TLabel
    Left = 304
    Top = 8
    Width = 132
    Height = 19
    Caption = 'PENGEMBALIAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 128
    Top = 208
    Width = 63
    Height = 13
    Caption = 'ID ANGGOTA'
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
  object edtidpinjam: TEdit
    Left = 240
    Top = 168
    Width = 249
    Height = 21
    TabOrder = 3
  end
  object btnsimpan: TButton
    Left = 128
    Top = 240
    Width = 105
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btnsimpanClick
  end
  object btnubah: TButton
    Left = 240
    Top = 240
    Width = 105
    Height = 25
    Caption = 'Ubah'
    TabOrder = 5
    OnClick = btnubahClick
  end
  object btnhps: TButton
    Left = 352
    Top = 240
    Width = 105
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = btnhpsClick
  end
  object dbgrd1: TDBGrid
    Left = 128
    Top = 272
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
    Top = 240
    Width = 105
    Height = 25
    Caption = 'Baru'
    TabOrder = 8
    OnClick = btnbaruClick
  end
  object btnkeluar: TButton
    Left = 488
    Top = 440
    Width = 89
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 9
    OnClick = btnkeluarClick
  end
  object btn1: TButton
    Left = 128
    Top = 440
    Width = 129
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 10
    OnClick = btn1Click
  end
  object edtanggota: TEdit
    Left = 240
    Top = 208
    Width = 249
    Height = 21
    TabOrder = 11
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
    Top = 360
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from  tabel_pengembalian')
    Params = <>
    Left = 88
    Top = 408
  end
  object ds1: TDataSource
    AutoEdit = False
    DataSet = zqry1
    Left = 88
    Top = 288
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45259.519384884300000000
    ReportOptions.LastChange = 45259.529671145800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 88
    Top = 320
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
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 306.141930000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'PENGEMBALIAN')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 45.354360000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'id_kembali'
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
            '[frxdbdtst1."id_kembali"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 90.708720000000000000
          Width = 105.826840000000000000
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
        object Memo10: TfrxMemoView
          Left = 196.535560000000000000
          Width = 151.181200000000000000
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
        object Memo12: TfrxMemoView
          Left = 510.236550000000000000
          Width = 94.488250000000000000
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
        object Memo13: TfrxMemoView
          Left = 604.724800000000000000
          Width = 102.047310000000000000
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
        object Memo11: TfrxMemoView
          Left = 347.716760000000000000
          Width = 162.519790000000000000
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
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 75.590600000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 45.354360000000000000
          Width = 45.354360000000000000
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
          Left = 90.708720000000000000
          Width = 105.826840000000000000
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
          Width = 151.181200000000000000
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
          Left = 347.716760000000000000
          Width = 162.519790000000000000
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
            'TANGGAL KEMBALI')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 510.236550000000000000
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
            'ID PINJAM')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 604.724800000000000000
          Width = 102.047310000000000000
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
    Top = 232
  end
end
