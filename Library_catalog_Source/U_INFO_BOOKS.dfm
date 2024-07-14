object F_INFO_BOOKS: TF_INFO_BOOKS
  Left = 277
  Top = 210
  Width = 1262
  Height = 675
  Caption = #1050#1085#1080#1075#1080
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
    Width = 1246
    Height = 65
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1246
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
      Left = 1157
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
    object cb_Sort: TComboBox
      Left = 568
      Top = 28
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 10
      Items.Strings = (
        #1050#1086#1076' '#1082#1085#1080#1075#1080
        #1048#1084#1103' '#1082#1085#1080#1075#1080
        #1040#1074#1090#1086#1088
        #1044#1072#1090#1072' '#1087#1077#1095#1072#1090#1080
        #1050#1086#1083'-'#1074#1086' '#1076#1086#1089#1090#1091#1087#1085#1099#1093' '#1082#1085#1080#1075
        #1050#1086#1083'-'#1074#1086' '#1089#1090#1088#1072#1085#1080#1094
        #1062#1077#1085#1072
        #1046#1072#1085#1088)
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 1246
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
        FieldName = 'INFO_BOOKS'
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076' '#1082#1085#1080#1075#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_BOOK'
        Title.Alignment = taCenter
        Title.Caption = #1048#1084#1103' '#1082#1085#1080#1075#1080
        Width = 420
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AUTHOR'
        Title.Alignment = taCenter
        Title.Caption = #1040#1074#1090#1086#1088
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_OF_PRINTING'
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1087#1077#1095#1072#1090#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBER_OF_AVAILABLE'
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086' '#1076#1086#1089#1090#1091#1087#1085#1099#1093' '#1082#1085#1080#1075
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMBER_OF_PAGES'
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086' '#1089#1090#1088#1072#1085#1080#1094
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE'
        Title.Alignment = taCenter
        Title.Caption = #1062#1077#1085#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GEBRE'
        Title.Alignment = taCenter
        Title.Caption = #1046#1072#1085#1088
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = FB_Data.ds_INFO_BOOKS
    Left = 832
    Top = 164
  end
end
