object F_BOOK_BOOKING_Add: TF_BOOK_BOOKING_Add
  Left = 354
  Top = 234
  Width = 313
  Height = 286
  Caption = #1041#1088#1086#1085#1080#1088#1086#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
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
    Width = 74
    Height = 13
    Caption = #1060#1048#1054' '#1095#1080#1090#1072#1090#1077#1083#1103
  end
  object Label6: TLabel
    Left = 20
    Top = 120
    Width = 96
    Height = 13
    Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072' '#1073#1088#1086#1085#1080
  end
  object Button_Panel: TPanel
    Left = 0
    Top = 206
    Width = 297
    Height = 41
    Align = alBottom
    TabOrder = 5
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
      Left = 188
      Top = 8
      Width = 91
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object DateTimePicker1: TDateTimePicker
    Left = 16
    Top = 136
    Width = 186
    Height = 21
    Date = 45429.469259270830000000
    Time = 45429.469259270830000000
    TabOrder = 4
  end
  object cb_BOOK_CODE: TComboBox
    Left = 16
    Top = 32
    Width = 269
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = cb_BOOK_CODEChange
  end
  object cb_INFO_BOOKS: TComboBox
    Left = 212
    Top = 52
    Width = 65
    Height = 21
    Style = csDropDownList
    Enabled = False
    ItemHeight = 13
    TabOrder = 1
    Visible = False
  end
  object cb_NUMBER_TICKET: TComboBox
    Left = 16
    Top = 84
    Width = 269
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    OnChange = cb_NUMBER_TICKETChange
  end
  object cb_NUMBER_TICKET_id: TComboBox
    Left = 212
    Top = 104
    Width = 65
    Height = 21
    Style = csDropDownList
    Enabled = False
    ItemHeight = 13
    TabOrder = 3
    Visible = False
  end
end
