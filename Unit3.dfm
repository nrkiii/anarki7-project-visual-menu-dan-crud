object Form3: TForm3
  Left = 516
  Top = 180
  Width = 1044
  Height = 513
  Caption = 'KATEGORI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 64
    Width = 10
    Height = 13
    Caption = 'Id'
  end
  object Label2: TLabel
    Left = 184
    Top = 104
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object Label3: TLabel
    Left = 192
    Top = 400
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Edit1: TEdit
    Left = 256
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 256
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 184
    Top = 176
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 320
    Top = 176
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 448
    Top = 176
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 4
    OnClick = btn3Click
  end
  object DBGrid1: TDBGrid
    Left = 232
    Top = 240
    Width = 320
    Height = 120
    DataSource = DataModule4.DataSource
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit11: TEdit
    Left = 296
    Top = 392
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object btn4: TButton
    Left = 488
    Top = 392
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 7
  end
end
