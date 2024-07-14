object F_INFO_BOOKS_Add: TF_INFO_BOOKS_Add
  Left = 286
  Top = 210
  Width = 271
  Height = 458
  BorderIcons = [biSystemMenu]
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1082#1085#1080#1075#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 20
    Top = 16
    Width = 51
    Height = 13
    Caption = #1048#1084#1103' '#1082#1085#1080#1075#1080
  end
  object Label3: TLabel
    Left = 20
    Top = 68
    Width = 31
    Height = 13
    Caption = #1040#1074#1090#1086#1088
  end
  object Label4: TLabel
    Left = 20
    Top = 172
    Width = 120
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1076#1086#1089#1090#1091#1087#1085#1099#1093' '#1082#1085#1080#1075
  end
  object Label5: TLabel
    Left = 20
    Top = 224
    Width = 79
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1089#1090#1088#1072#1085#1080#1094
  end
  object Label6: TLabel
    Left = 20
    Top = 120
    Width = 65
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1077#1095#1072#1090#1080
  end
  object Label7: TLabel
    Left = 20
    Top = 276
    Width = 26
    Height = 13
    Caption = #1062#1077#1085#1072
  end
  object Label8: TLabel
    Left = 20
    Top = 328
    Width = 28
    Height = 13
    Caption = #1046#1072#1085#1088
  end
  object Button_Panel: TPanel
    Left = 0
    Top = 378
    Width = 255
    Height = 41
    Align = alBottom
    TabOrder = 7
    object BitBtn1: TBitBtn
      Left = 20
      Top = 8
      Width = 105
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      Default = True
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 140
      Top = 8
      Width = 91
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object e_NAME_BOOK: TEdit
    Left = 16
    Top = 32
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object e_AUTHOR: TEdit
    Left = 16
    Top = 84
    Width = 217
    Height = 21
    TabOrder = 1
  end
  object e_NUMBER_OF_AVAILABLE: TEdit
    Left = 16
    Top = 188
    Width = 125
    Height = 21
    TabOrder = 3
  end
  object e_NUMBER_OF_PAGES: TEdit
    Left = 16
    Top = 240
    Width = 85
    Height = 21
    TabOrder = 4
  end
  object DateTimePicker1: TDateTimePicker
    Left = 16
    Top = 136
    Width = 186
    Height = 21
    Date = 45429.469259270830000000
    Time = 45429.469259270830000000
    TabOrder = 2
  end
  object e_PRICE: TEdit
    Left = 16
    Top = 292
    Width = 85
    Height = 21
    TabOrder = 5
  end
  object e_GEBRE: TEdit
    Left = 16
    Top = 344
    Width = 217
    Height = 21
    TabOrder = 6
  end
end
