object F_INFO_READERS: TF_INFO_READERS
  Left = 324
  Top = 159
  Width = 937
  Height = 675
  Caption = #1063#1080#1090#1072#1090#1077#1083#1080
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 921
    Height = 65
    Align = alTop
    TabOrder = 0
    DesignSize = (
      921
      65)
    object b_Add: TButton
      Left = 8
      Top = 8
      Width = 80
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = b_AddClick
    end
    object b_Edit: TButton
      Left = 92
      Top = 8
      Width = 80
      Height = 33
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 1
      OnClick = b_EditClick
    end
    object b_Delete: TButton
      Left = 176
      Top = 8
      Width = 80
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = b_DeleteClick
    end
    object b_Cancel: TButton
      Left = 832
      Top = 8
      Width = 80
      Height = 33
      Anchors = [akTop, akRight]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ModalResult = 2
      TabOrder = 6
    end
    object b_Fillter: TButton
      Left = 392
      Top = 8
      Width = 80
      Height = 33
      Caption = #1060#1080#1083#1100#1090#1088
      TabOrder = 3
      OnClick = b_FillterClick
    end
    object e_Fillter: TEdit
      Left = 268
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 9
    end
    object b_Fillter_Clear: TButton
      Left = 476
      Top = 8
      Width = 80
      Height = 33
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      TabOrder = 4
      WordWrap = True
      OnClick = b_Fillter_ClearClick
    end
    object cb_Sort: TComboBox
      Left = 568
      Top = 28
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 10
      Items.Strings = (
        #8470' '#1073#1080#1083#1077#1090#1072
        #1060#1072#1084#1080#1083#1080#1103
        #1048#1084#1103
        #1054#1090#1095#1077#1089#1090#1074#1086
        #1040#1076#1088#1077#1089
        #1058#1077#1083#1077#1092#1086#1085)
    end
    object rb1: TRadioButton
      Left = 568
      Top = 12
      Width = 65
      Height = 17
      Caption = #1055#1088#1103#1084#1072#1103
      Checked = True
      TabOrder = 7
      TabStop = True
    end
    object rb2: TRadioButton
      Left = 636
      Top = 12
      Width = 81
      Height = 17
      Caption = #1054#1073#1088#1072#1090#1085#1072#1103
      TabOrder = 8
    end
    object b_Sort: TButton
      Left = 716
      Top = 8
      Width = 80
      Height = 33
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
      TabOrder = 5
      WordWrap = True
      OnClick = b_SortClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 921
    Height = 571
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMBER_TICKET'
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1073#1080#1083#1077#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SURNAME'
        Title.Alignment = taCenter
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Alignment = taCenter
        Title.Caption = #1048#1084#1103
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PATRONYMIC'
        Title.Alignment = taCenter
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADRESS'
        Title.Alignment = taCenter
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 355
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEPHONE'
        Title.Alignment = taCenter
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = FB_Data.ds_INFO_READERS
    Left = 540
    Top = 228
  end
end
