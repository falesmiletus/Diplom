object Form1: TForm1
  Left = 269
  Top = 137
  Width = 1243
  Height = 535
  Caption = #1041#1080#1073#1083#1080#1086#1090#1077#1082#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 237
    Width = 1227
    Height = 5
    Cursor = crVSplit
    Align = alTop
    OnMoved = Splitter1Moved
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1227
    Height = 237
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 476
      Top = 116
      Width = 126
      Height = 13
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1063#1080#1090#1072#1090#1077#1083#1077
    end
    object Label3: TLabel
      Left = 476
      Top = 8
      Width = 107
      Height = 13
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1085#1080#1075#1077
    end
    object Label1: TLabel
      Left = 4
      Top = 8
      Width = 57
      Height = 13
      Caption = #1041#1088#1086#1085#1100' '#1082#1085#1080#1075
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 28
      Width = 453
      Height = 185
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'BOOKING_DATE'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME_BOOK'
          Title.Alignment = taCenter
          Title.Caption = #1050#1085#1080#1075#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SURNAME'
          Title.Alignment = taCenter
          Title.Caption = #1060#1072#1084#1080#1083#1080#1103
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 160
          Visible = True
        end>
    end
    object DBGrid3: TDBGrid
      Left = 464
      Top = 132
      Width = 733
      Height = 81
      DataSource = DataSource3
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
          FieldName = 'SURNAME'
          Title.Alignment = taCenter
          Title.Caption = #1060#1072#1084#1080#1083#1080#1103
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1048#1084#1103
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PATRONYMIC'
          Title.Alignment = taCenter
          Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADRESS'
          Title.Alignment = taCenter
          Title.Caption = #1040#1076#1088#1077#1089
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEPHONE'
          Title.Alignment = taCenter
          Title.Caption = #1058#1077#1083#1077#1092#1086#1085
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 464
      Top = 28
      Width = 733
      Height = 81
      DataSource = DataSource2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NAME_BOOK'
          Title.Alignment = taCenter
          Title.Caption = #1048#1084#1103' '#1082#1085#1080#1075#1080
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AUTHOR'
          Title.Alignment = taCenter
          Title.Caption = #1040#1074#1090#1086#1088
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_OF_PRINTING'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1087#1077#1095#1072#1090#1080
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMBER_OF_AVAILABLE'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1076#1086#1089#1090#1091#1087#1085#1099#1093' '#1082#1085#1080#1075
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMBER_OF_PAGES'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1089#1090#1088#1072#1085#1080#1094
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1062#1077#1085#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GEBRE'
          Title.Alignment = taCenter
          Title.Caption = #1046#1072#1085#1088
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 242
    Width = 1227
    Height = 234
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 4
      Top = 8
      Width = 64
      Height = 13
      Caption = #1042#1099#1076#1072#1095#1072' '#1082#1085#1080#1075
    end
    object Label6: TLabel
      Left = 476
      Top = 116
      Width = 126
      Height = 13
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1063#1080#1090#1072#1090#1077#1083#1077
    end
    object Label5: TLabel
      Left = 476
      Top = 8
      Width = 107
      Height = 13
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1085#1080#1075#1077
    end
    object DBGrid4: TDBGrid
      Left = 0
      Top = 28
      Width = 453
      Height = 185
      DataSource = DataSource4
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
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
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_RETURN'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME_BOOK'
          Title.Alignment = taCenter
          Title.Caption = #1048#1084#1103' '#1082#1085#1080#1075#1080
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SURNAME'
          Title.Alignment = taCenter
          Title.Caption = #1060#1072#1084#1080#1083#1080#1103
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end>
    end
    object DBGrid5: TDBGrid
      Left = 464
      Top = 28
      Width = 733
      Height = 81
      DataSource = DataSource5
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
          FieldName = 'NAME_BOOK'
          Title.Alignment = taCenter
          Title.Caption = #1048#1084#1103' '#1082#1085#1080#1075#1080
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AUTHOR'
          Title.Alignment = taCenter
          Title.Caption = #1040#1074#1090#1086#1088
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_OF_PRINTING'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1087#1077#1095#1072#1090#1080
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMBER_OF_AVAILABLE'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1076#1086#1089#1090#1091#1087#1085#1099#1093' '#1082#1085#1080#1075
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMBER_OF_PAGES'
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1089#1090#1088#1072#1085#1080#1094
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRICE'
          Title.Alignment = taCenter
          Title.Caption = #1062#1077#1085#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GEBRE'
          Title.Alignment = taCenter
          Title.Caption = #1046#1072#1085#1088
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end>
    end
    object DBGrid6: TDBGrid
      Left = 464
      Top = 132
      Width = 733
      Height = 81
      DataSource = DataSource6
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SURNAME'
          Title.Alignment = taCenter
          Title.Caption = #1060#1072#1084#1080#1083#1080#1103
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = #1048#1084#1103
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PATRONYMIC'
          Title.Alignment = taCenter
          Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADRESS'
          Title.Alignment = taCenter
          Title.Caption = #1040#1076#1088#1077#1089
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEPHONE'
          Title.Alignment = taCenter
          Title.Caption = #1058#1077#1083#1077#1092#1086#1085
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end>
    end
  end
  object MainMenu: TMainMenu
    Left = 296
    Top = 16
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object N11: TMenuItem
        Caption = #1048#1085#1092#1086' '#1082#1085#1080#1075
        OnClick = N11Click
      end
      object N5: TMenuItem
        Caption = #1048#1085#1092#1086' '#1095#1080#1090#1072#1090#1077#1083#1077#1081
        OnClick = N5Click
      end
    end
    object N2: TMenuItem
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      object N4: TMenuItem
        Caption = #1041#1088#1086#1085#1100' '#1082#1085#1080#1075
        OnClick = N4Click
      end
      object N41: TMenuItem
        Caption = #1042#1099#1076#1072#1095#1072' '#1082#1085#1080#1075
        OnClick = N41Click
      end
    end
    object N3: TMenuItem
      Caption = #1054#1090#1095#1105#1090#1099
      OnClick = N3Click
    end
    object D1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = D1Click
    end
  end
  object frxReport1: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45432.460914016200000000
    ReportOptions.LastChange = 45437.568464201390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 76
    Top = 36
    Datasets = <
      item
        DataSet = frx_ds_LENDING_OF_BOOKS_Select
        DataSetName = 'frx_ds_LENDING_OF_BOOKS_Select'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frx_ds_LENDING_OF_BOOKS_Select
        DataSetName = 'frx_ds_LENDING_OF_BOOKS_Select'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Left = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frx_ds_LENDING_OF_BOOKS_Select
          DataSetName = 'frx_ds_LENDING_OF_BOOKS_Select'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_ds_LENDING_OF_BOOKS_Select."DATE_RETURN"] '#1056#1110'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NAME_BOOK'
          DataSet = frx_ds_BOOK_BOOKING_Select
          DataSetName = 'frx_ds_BOOK_BOOKING_Select'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_ds_BOOK_BOOKING_Select."NAME_BOOK"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 313.700990000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'AUTHOR'
          DataSet = frx_ds_BOOK_BOOKING_Select
          DataSetName = 'frx_ds_BOOK_BOOKING_Select'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_ds_BOOK_BOOKING_Select."AUTHOR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 434.645950000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'SURNAME'
          DataSet = frx_ds_BOOK_BOOKING_Select
          DataSetName = 'frx_ds_BOOK_BOOKING_Select'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_ds_BOOK_BOOKING_Select."SURNAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 529.134200000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NAME'
          DataSet = frx_ds_LENDING_OF_BOOKS_Select
          DataSetName = 'frx_ds_LENDING_OF_BOOKS_Select'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_ds_LENDING_OF_BOOKS_Select."NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 627.401980000000000000
          Width = 90.708720000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'PATRONYMIC'
          DataSet = frx_ds_LENDING_OF_BOOKS_Select
          DataSetName = 'frx_ds_LENDING_OF_BOOKS_Select'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_ds_LENDING_OF_BOOKS_Select."PATRONYMIC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frx_ds_LENDING_OF_BOOKS_Select
          DataSetName = 'frx_ds_LENDING_OF_BOOKS_Select'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_ds_LENDING_OF_BOOKS_Select."DATE_LENDING"] '#1056#1110'.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 37.795300000000000000
          Width = 642.520100000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1057#8225#1057#8216#1057#8218' '#1056#1111#1056#1109' '#1056#1030#1057#8249#1056#1169#1056#176#1057#8225#1056#181' '#1056#1108#1056#1029#1056#1105#1056#1110)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Top = 37.795300000000000000
          Width = 642.520100000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#183#1056#176' [Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 94.488250000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clSilver
          DataSet = frx_ds_INFO_READERS
          DataSetName = 'frx_ds_INFO_READERS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1030#1056#1109#1056#183#1056#1030#1057#1026#1056#176#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 188.976500000000000000
          Top = 94.488250000000000000
          Width = 124.724490000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clSilver
          DataSet = frx_ds_INFO_READERS
          DataSetName = 'frx_ds_INFO_READERS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1056#1112#1057#1039' '#1056#1108#1056#1029#1056#1105#1056#1110#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 313.700990000000000000
          Top = 94.488250000000000000
          Width = 120.944960000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clSilver
          DataSet = frx_ds_INFO_READERS
          DataSetName = 'frx_ds_INFO_READERS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1106#1056#1030#1057#8218#1056#1109#1057#1026)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 434.645950000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clSilver
          DataSet = frx_ds_INFO_READERS
          DataSetName = 'frx_ds_INFO_READERS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#176#1056#1112#1056#1105#1056#187#1056#1105#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 529.134200000000000000
          Top = 94.488250000000000000
          Width = 98.267780000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clSilver
          DataSet = frx_ds_INFO_READERS
          DataSetName = 'frx_ds_INFO_READERS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1056#1112#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 627.401980000000000000
          Top = 94.488250000000000000
          Width = 90.708720000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clSilver
          DataSet = frx_ds_INFO_READERS
          DataSetName = 'frx_ds_INFO_READERS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clSilver
          DataSet = frx_ds_INFO_READERS
          DataSetName = 'frx_ds_INFO_READERS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1030#1057#8249#1056#1169#1056#176#1057#8225#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Memo18: TfrxMemoView
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            
              #1056#8217#1057#1027#1056#181#1056#1110#1056#1109' '#1056#183#1056#176#1056#1111#1056#1105#1057#1027#1056#181#1056#8470' '#1056#1030' '#1056#1109#1057#8218#1057#8225#1056#181#1057#8218#1056#181' - [Line#]             ' +
              '         '#1056#1038#1057#8218#1057#1026'. [Page]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 160
    Top = 40
  end
  object frx_ds_INFO_READERS: TfrxDBDataset
    UserName = 'frx_ds_INFO_READERS'
    CloseDataSource = False
    DataSet = FB_Data.ds_INFO_READERS
    BCDToCurrency = False
    Left = 116
    Top = 120
  end
  object frx_ds_INFO_BOOKS: TfrxDBDataset
    UserName = 'frx_ds_INFO_BOOKS'
    CloseDataSource = False
    DataSet = FB_Data.ds_INFO_BOOKS
    BCDToCurrency = False
    Left = 116
    Top = 148
  end
  object frx_ds_BOOK_BOOKING_Select: TfrxDBDataset
    UserName = 'frx_ds_BOOK_BOOKING_Select'
    CloseDataSource = False
    DataSet = FB_Data.ds_BOOK_BOOKING_Select
    BCDToCurrency = False
    Left = 116
    Top = 180
  end
  object frx_ds_LENDING_OF_BOOKS_Select: TfrxDBDataset
    UserName = 'frx_ds_LENDING_OF_BOOKS_Select'
    CloseDataSource = False
    DataSet = FB_Data.ds_LENDING_OF_BOOKS_Select
    BCDToCurrency = False
    Left = 116
    Top = 212
  end
  object DataSource1: TDataSource
    DataSet = IBQuery_BOOK_BOOKING
    Left = 280
    Top = 124
  end
  object DataSource2: TDataSource
    DataSet = IBQuery_INFO_BOOKS
    Left = 760
    Top = 40
  end
  object IBQuery_INFO_BOOKS: TIBQuery
    Database = FB_Data.FBDatabase
    Transaction = FB_Data.FBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 668
    Top = 40
  end
  object IBQuery_BOOK_BOOKING: TIBQuery
    Database = FB_Data.FBDatabase
    Transaction = FB_Data.FBTransaction
    AfterScroll = IBQuery_BOOK_BOOKINGAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '
      '    book_booking.id_document,'
      '    book_booking.booking_date,'
      '    info_books.name_book,'
      ''
      '    info_readers.surname,'
      ''
      '    info_books.info_books,'
      '    info_readers.number_ticket'
      'from info_readers'
      
        '   inner join book_booking on (info_readers.number_ticket = book' +
        '_booking.number_ticket)'
      
        '   inner join info_books on (book_booking.book_code = info_books' +
        '.info_books)'
      
        'order by book_booking.booking_date, info_books.name_book, info_r' +
        'eaders.surname')
    Left = 220
    Top = 80
  end
  object DataSource3: TDataSource
    DataSet = IBQuery_INFO_READERS
    Left = 756
    Top = 136
  end
  object IBQuery_INFO_READERS: TIBQuery
    Database = FB_Data.FBDatabase
    Transaction = FB_Data.FBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from INFO_READERS')
    Left = 620
    Top = 136
  end
  object DataSource4: TDataSource
    DataSet = IBQuery_LENDING_OF_BOOKS
    Left = 320
    Top = 384
  end
  object IBQuery_LENDING_OF_BOOKS: TIBQuery
    Database = FB_Data.FBDatabase
    Transaction = FB_Data.FBTransaction
    AfterScroll = IBQuery_LENDING_OF_BOOKSAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '
      '    lending_of_books.id_lending,'
      '    lending_of_books.date_lending,'
      '    lending_of_books.date_return,'
      '    info_books.name_book,'
      '    info_readers.surname,'
      '    info_books.info_books,'
      '    info_readers.number_ticket'
      'from info_readers'
      
        '   inner join lending_of_books on (info_readers.number_ticket = ' +
        'lending_of_books.number_ticket)'
      
        '   inner join info_books on (lending_of_books.book_code = info_b' +
        'ooks.info_books)'
      
        'order by lending_of_books.date_lending, lending_of_books.date_re' +
        'turn, info_books.name_book, info_readers.surname'
      '')
    Left = 204
    Top = 340
  end
  object DataSource5: TDataSource
    DataSet = IBQuery_INFO_BOOKS_2
    Left = 796
    Top = 304
  end
  object IBQuery_INFO_BOOKS_2: TIBQuery
    Database = FB_Data.FBDatabase
    Transaction = FB_Data.FBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 704
    Top = 308
  end
  object DataSource6: TDataSource
    DataSet = IBQuery_INFO_READERS_2
    Left = 760
    Top = 412
  end
  object IBQuery_INFO_READERS_2: TIBQuery
    Database = FB_Data.FBDatabase
    Transaction = FB_Data.FBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from INFO_READERS')
    Left = 648
    Top = 408
  end
end
