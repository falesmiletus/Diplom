object F_LENDING_OF_BOOKS: TF_LENDING_OF_BOOKS
  Left = 298
  Top = 201
  Width = 999
  Height = 563
  Caption = #1042#1088#1091#1095#1077#1085#1080#1077' '#1082#1085#1080#1075
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 983
    Height = 161
    Align = alTop
    TabOrder = 0
    DesignSize = (
      983
      161)
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
      Left = 894
      Top = 8
      Width = 80
      Height = 33
      Anchors = [akTop, akRight]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ModalResult = 2
      TabOrder = 3
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 48
      Width = 873
      Height = 105
      Caption = ' '#1060#1080#1083#1100#1090#1088' '
      TabOrder = 4
      object Label1: TLabel
        Left = 8
        Top = 20
        Width = 66
        Height = 13
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
      end
      object Label2: TLabel
        Left = 260
        Top = 20
        Width = 54
        Height = 13
        Caption = #1048#1084#1103' '#1082#1085#1080#1075#1080
      end
      object Label3: TLabel
        Left = 440
        Top = 20
        Width = 49
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103
      end
      object Label4: TLabel
        Left = 128
        Top = 20
        Width = 76
        Height = 13
        Caption = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
      end
      object CheckBox1: TCheckBox
        Left = 8
        Top = 40
        Width = 17
        Height = 17
        TabOrder = 8
        OnClick = CheckBox1Click
      end
      object DateTimePicker1: TDateTimePicker
        Left = 28
        Top = 36
        Width = 86
        Height = 21
        Date = 45431.641038692130000000
        Time = 45431.641038692130000000
        Enabled = False
        TabOrder = 3
      end
      object cb_NAME_BOOK: TComboBox
        Left = 256
        Top = 36
        Width = 177
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 5
      end
      object cb_SURNAME: TComboBox
        Left = 436
        Top = 36
        Width = 177
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 6
      end
      object b_Fillter: TButton
        Left = 448
        Top = 64
        Width = 80
        Height = 33
        Caption = #1060#1080#1083#1100#1090#1088
        TabOrder = 10
        OnClick = b_FillterClick
      end
      object b_Fillter_Clear: TButton
        Left = 532
        Top = 64
        Width = 80
        Height = 33
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
        TabOrder = 11
        WordWrap = True
        OnClick = b_Fillter_ClearClick
      end
      object cb_Sort: TComboBox
        Left = 628
        Top = 36
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 7
        Items.Strings = (
          #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
          #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
          #1048#1084#1103' '#1082#1085#1080#1075#1080
          #1040#1074#1090#1086#1088
          #1060#1072#1084#1080#1083#1080#1103
          #1048#1084#1103
          #1054#1090#1095#1077#1089#1090#1074#1086)
      end
      object rb1: TRadioButton
        Left = 628
        Top = 20
        Width = 65
        Height = 17
        Caption = #1055#1088#1103#1084#1072#1103
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rb2: TRadioButton
        Left = 696
        Top = 20
        Width = 81
        Height = 17
        Caption = #1054#1073#1088#1072#1090#1085#1072#1103
        TabOrder = 1
      end
      object b_Sort: TButton
        Left = 781
        Top = 24
        Width = 80
        Height = 33
        Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
        TabOrder = 2
        WordWrap = True
        OnClick = b_SortClick
      end
      object CheckBox2: TCheckBox
        Left = 128
        Top = 40
        Width = 17
        Height = 17
        TabOrder = 9
        OnClick = CheckBox2Click
      end
      object DateTimePicker2: TDateTimePicker
        Left = 148
        Top = 36
        Width = 86
        Height = 21
        Date = 45431.641038692130000000
        Time = 45431.641038692130000000
        Enabled = False
        TabOrder = 4
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 161
    Width = 983
    Height = 363
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATE_LENDING'
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATE_RETURN'
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME_BOOK'
        Title.Alignment = taCenter
        Title.Caption = #1048#1084#1103' '#1082#1085#1080#1075#1080
        Width = 201
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AUTHOR'
        Title.Alignment = taCenter
        Title.Caption = #1040#1074#1090#1086#1088
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SURNAME'
        Title.Alignment = taCenter
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Alignment = taCenter
        Title.Caption = #1048#1084#1103
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PATRONYMIC'
        Title.Alignment = taCenter
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Width = 150
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = FB_Data.ds_LENDING_OF_BOOKS_Select
    Left = 540
    Top = 228
  end
end
