object Form1: TForm1
  Left = 298
  Top = 205
  Width = 1044
  Height = 600
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 248
    Top = 24
    Width = 25
    Height = 18
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 240
    Top = 120
    Width = 33
    Height = 18
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 240
    Top = 72
    Width = 40
    Height = 18
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 240
    Top = 168
    Width = 42
    Height = 18
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 224
    Top = 216
    Width = 56
    Height = 18
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 224
    Top = 264
    Width = 58
    Height = 18
    Caption = 'MEMBER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 400
    Top = 264
    Width = 53
    Height = 16
    Caption = 'DISKON :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 464
    Top = 264
    Width = 93
    Height = 16
    Caption = 'Terisi Otomastis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 256
    Top = 512
    Width = 33
    Height = 18
    Caption = 'CARI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 304
    Top = 24
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object edt3: TEdit
    Left = 304
    Top = 120
    Width = 273
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 304
    Top = 72
    Width = 273
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 304
    Top = 168
    Width = 273
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 304
    Top = 216
    Width = 273
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 304
    Top = 264
    Width = 73
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'pilih--'
    OnChange = cbb1Change
    Items.Strings = (
      'yes'
      'no')
  end
  object btn1: TButton
    Left = 56
    Top = 312
    Width = 97
    Height = 33
    Caption = 'NEW'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 176
    Top = 312
    Width = 97
    Height = 33
    Caption = 'INSERT'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 296
    Top = 312
    Width = 97
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 416
    Top = 312
    Width = 97
    Height = 33
    Caption = 'DALATE'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 536
    Top = 312
    Width = 97
    Height = 33
    Caption = 'RESET'
    TabOrder = 10
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 712
    Top = 312
    Width = 97
    Height = 33
    Caption = 'LAPORAN'
    TabOrder = 11
    OnClick = btn6Click
  end
  object edt6: TEdit
    Left = 304
    Top = 512
    Width = 273
    Height = 21
    TabOrder = 12
    OnChange = edt6Change
  end
  object dbgrd1: TDBGrid
    Left = 160
    Top = 352
    Width = 433
    Height = 89
    DataSource = DataModule2.dskustomer
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
