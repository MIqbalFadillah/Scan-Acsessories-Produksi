object frmModel: TfrmModel
  Left = 0
  Top = 0
  Caption = 'Select Model'
  ClientHeight = 438
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdModel: TSMDBGrid
    Left = 0
    Top = 0
    Width = 710
    Height = 438
    Align = alClient
    DataSource = dsModel
    FixedColor = 13828095
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = grdModelDblClick
    Flat = True
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clBtnFace
    GridStyle.Title.Direction = fdBottomToTop
    GridStyle.Title.StartColor = clBtnFace
    GridStyle.Title.EndColor = 10930928
    TitleHeight.LineCount = 3
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoRowNumber, eoShowFooter, eoShowRecNo, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 9
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ACC_MODEL'
        Title.Alignment = taCenter
        Title.Caption = 'Model'
        Width = 94
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ACC_CRADLE'
        Title.Alignment = taCenter
        Title.Caption = 'Cradle'
        Width = 76
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ACC_CABLE'
        Title.Alignment = taCenter
        Title.Caption = 'DC Cable'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ACC_IBM'
        Title.Alignment = taCenter
        Title.Caption = 'IB (Manual)'
        Width = 76
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ACC_IBI'
        Title.Alignment = taCenter
        Title.Caption = 'IB (Install)'
        Width = 76
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ACC_CARDNAME'
        Title.Alignment = taCenter
        Title.Caption = 'Card Name'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACC_EAN'
        Title.Alignment = taCenter
        Title.Caption = 'EAN'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACC_CNT'
        Title.Alignment = taCenter
        Title.Caption = 'Acc. '#13'Qty'
        Width = 40
        Visible = True
      end>
  end
  object dsModel: TDataSource
    AutoEdit = False
    DataSet = qryModel
    Left = 6
    Top = 168
  end
  object qryModel: TADOQuery
    Connection = frmMain.DBConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'App'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 25
        Value = Null
      end>
    SQL.Strings = (
      'select * from t_accessories'
      'where ACC_MODEL NOT like '#39'SHT%'#39
      'order by ACC_MODEL')
    Left = 40
    Top = 168
    object qryModelACC_MODEL: TStringField
      FieldName = 'ACC_MODEL'
      Size = 25
    end
    object qryModelACC_IBM: TStringField
      FieldName = 'ACC_IBM'
      Size = 25
    end
    object qryModelACC_IBI: TStringField
      FieldName = 'ACC_IBI'
      Size = 25
    end
    object qryModelACC_CRADLE: TStringField
      FieldName = 'ACC_CRADLE'
      Size = 25
    end
    object qryModelACC_CABLE: TStringField
      FieldName = 'ACC_CABLE'
      Size = 25
    end
    object qryModelACC_CARDNAME: TStringField
      FieldName = 'ACC_CARDNAME'
      Size = 25
    end
    object qryModelACC_CNT: TIntegerField
      FieldName = 'ACC_CNT'
    end
    object qryModelACC_GRP: TIntegerField
      FieldName = 'ACC_GRP'
    end
    object qryModelACC_EAN: TStringField
      Alignment = taCenter
      FieldName = 'ACC_EAN'
      Size = 25
    end
  end
end
