object F_Report: TF_Report
  Left = 509
  Top = 233
  Width = 486
  Height = 449
  BorderIcons = [biSystemMenu]
  Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1086#1090#1095#1077#1090#1072
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
  object RadioButton1: TRadioButton
    Left = 16
    Top = 16
    Width = 157
    Height = 17
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1095#1080#1090#1072#1090#1077#1083#1103#1093
    Checked = True
    TabOrder = 0
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 16
    Top = 168
    Width = 157
    Height = 17
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1085#1080#1075#1072#1093
    TabOrder = 4
    OnClick = RadioButton2Click
  end
  object Button_Panel: TPanel
    Left = 0
    Top = 369
    Width = 470
    Height = 41
    Align = alBottom
    TabOrder = 8
    object BitBtn1: TBitBtn
      Left = 20
      Top = 8
      Width = 113
      Height = 25
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Default = True
      ModalResult = 1
      TabOrder = 0
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
      Left = 356
      Top = 8
      Width = 91
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object RadioButton3: TRadioButton
    Left = 260
    Top = 16
    Width = 157
    Height = 17
    Caption = #1041#1088#1086#1085#1100' '#1082#1085#1080#1075
    TabOrder = 1
    OnClick = RadioButton3Click
  end
  object RadioButton4: TRadioButton
    Left = 260
    Top = 168
    Width = 161
    Height = 17
    Caption = #1042#1099#1076#1072#1095#1072' '#1082#1085#1080#1075
    TabOrder = 5
    OnClick = RadioButton4Click
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 40
    Width = 169
    Height = 117
    Caption = #1055#1086#1083#1103
    TabOrder = 2
    object CheckBox1: TCheckBox
      Left = 12
      Top = 16
      Width = 97
      Height = 17
      Caption = #8470' '#1073#1080#1083#1077#1090#1072
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 12
      Top = 32
      Width = 97
      Height = 17
      Caption = #1060#1072#1084#1080#1083#1080#1103
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 12
      Top = 48
      Width = 97
      Height = 17
      Caption = #1048#1084#1103
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 12
      Top = 64
      Width = 97
      Height = 17
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CheckBox5: TCheckBox
      Left = 12
      Top = 80
      Width = 97
      Height = 17
      Caption = #1040#1076#1088#1077#1089
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CheckBox6: TCheckBox
      Left = 12
      Top = 96
      Width = 97
      Height = 17
      Caption = #1058#1077#1083#1077#1092#1086#1085
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 192
    Width = 169
    Height = 153
    Caption = #1055#1086#1083#1103
    Enabled = False
    TabOrder = 6
    object CheckBox7: TCheckBox
      Left = 12
      Top = 16
      Width = 97
      Height = 17
      Caption = #1050#1086#1076' '#1082#1085#1080#1075#1080
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object CheckBox8: TCheckBox
      Left = 12
      Top = 32
      Width = 97
      Height = 17
      Caption = #1048#1084#1103' '#1082#1085#1080#1075#1080
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CheckBox9: TCheckBox
      Left = 12
      Top = 48
      Width = 97
      Height = 17
      Caption = #1040#1074#1090#1086#1088
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object CheckBox10: TCheckBox
      Left = 12
      Top = 64
      Width = 97
      Height = 17
      Caption = #1044#1072#1090#1072' '#1087#1077#1095#1072#1090#1080
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CheckBox11: TCheckBox
      Left = 12
      Top = 80
      Width = 149
      Height = 17
      Caption = #1050#1086#1083'-'#1074#1086' '#1076#1086#1089#1090#1091#1087#1085#1099#1093' '#1082#1085#1080#1075
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CheckBox12: TCheckBox
      Left = 12
      Top = 96
      Width = 97
      Height = 17
      Caption = #1050#1086#1083'-'#1074#1086' '#1089#1090#1088#1072#1085#1080#1094
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object CheckBox13: TCheckBox
      Left = 12
      Top = 112
      Width = 97
      Height = 17
      Caption = #1062#1077#1085#1072
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object CheckBox14: TCheckBox
      Left = 12
      Top = 128
      Width = 97
      Height = 17
      Caption = #1046#1072#1085#1088
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
  end
  object GroupBox3: TGroupBox
    Left = 276
    Top = 40
    Width = 169
    Height = 117
    Caption = #1055#1086#1083#1103
    Enabled = False
    TabOrder = 3
    object CheckBox15: TCheckBox
      Left = 12
      Top = 16
      Width = 137
      Height = 17
      Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072' '#1073#1088#1086#1085#1080
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object CheckBox16: TCheckBox
      Left = 12
      Top = 32
      Width = 97
      Height = 17
      Caption = #1048#1084#1103' '#1082#1085#1080#1075#1080
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CheckBox17: TCheckBox
      Left = 12
      Top = 48
      Width = 97
      Height = 17
      Caption = #1040#1074#1090#1086#1088
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object CheckBox18: TCheckBox
      Left = 12
      Top = 64
      Width = 97
      Height = 17
      Caption = #1060#1072#1084#1080#1083#1080#1103
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CheckBox19: TCheckBox
      Left = 12
      Top = 80
      Width = 149
      Height = 17
      Caption = #1048#1084#1103
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CheckBox20: TCheckBox
      Left = 12
      Top = 96
      Width = 97
      Height = 17
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
  end
  object GroupBox4: TGroupBox
    Left = 276
    Top = 192
    Width = 169
    Height = 133
    Caption = #1055#1086#1083#1103
    Enabled = False
    TabOrder = 7
    object CheckBox21: TCheckBox
      Left = 12
      Top = 32
      Width = 137
      Height = 17
      Caption = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CheckBox22: TCheckBox
      Left = 12
      Top = 48
      Width = 97
      Height = 17
      Caption = #1048#1084#1103' '#1082#1085#1080#1075#1080
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object CheckBox23: TCheckBox
      Left = 12
      Top = 64
      Width = 97
      Height = 17
      Caption = #1040#1074#1090#1086#1088
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CheckBox24: TCheckBox
      Left = 12
      Top = 80
      Width = 97
      Height = 17
      Caption = #1060#1072#1084#1080#1083#1080#1103
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CheckBox25: TCheckBox
      Left = 12
      Top = 96
      Width = 149
      Height = 17
      Caption = #1048#1084#1103
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object CheckBox26: TCheckBox
      Left = 12
      Top = 112
      Width = 97
      Height = 17
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object CheckBox27: TCheckBox
      Left = 12
      Top = 16
      Width = 137
      Height = 17
      Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
  end
end
