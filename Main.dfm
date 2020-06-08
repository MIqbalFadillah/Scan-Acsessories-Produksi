object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Mpeon Accessories'
  ClientHeight = 716
  ClientWidth = 937
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 937
    Height = 65
    Align = alTop
    Caption = 'SET-230CP1K'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel4: TPanel
    Left = 0
    Top = 65
    Width = 937
    Height = 242
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 935
      Height = 240
      ActivePage = Tab7
      Align = alClient
      TabOrder = 0
      object Tab1: TTabSheet
        Caption = 'Scan'
        OnShow = Tab1Show
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 927
          Height = 81
          Align = alTop
          ParentBackground = False
          TabOrder = 0
          object Label8: TLabel
            Left = 110
            Top = 12
            Width = 64
            Height = 19
            Alignment = taRightJustify
            Caption = 'Set S/N :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 81
            Top = 45
            Width = 93
            Height = 19
            Alignment = taRightJustify
            Caption = 'IB (Manual) :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtSetSN1: TEdit
            Left = 180
            Top = 9
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = edtSetSN1Enter
            OnKeyPress = edtSetSN1KeyPress
          end
          object edtIBM1: TEdit
            Left = 180
            Top = 42
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = edtIBM1Enter
            OnKeyPress = edtIBM1KeyPress
          end
          object chkSkipIBM1: TCheckBox
            Left = 407
            Top = 49
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 2
            OnClick = chkSkipIBM1Click
          end
          object edtSkipIBM1: TEdit
            Left = 453
            Top = 42
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
        end
      end
      object Tab2: TTabSheet
        Caption = 'Scan'
        ImageIndex = 1
        OnShow = Tab2Show
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 927
          Height = 113
          Align = alTop
          ParentBackground = False
          TabOrder = 0
          object Label2: TLabel
            Left = 110
            Top = 12
            Width = 64
            Height = 19
            Alignment = taRightJustify
            Caption = 'Set S/N :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 82
            Top = 78
            Width = 93
            Height = 19
            Alignment = taRightJustify
            Caption = 'IB (Manual) :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 119
            Top = 45
            Width = 56
            Height = 19
            Alignment = taRightJustify
            Caption = 'Cradle :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtSetSN2: TEdit
            Left = 181
            Top = 9
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = edtSetSN1Enter
            OnKeyPress = edtSetSN2KeyPress
          end
          object edtIBM2: TEdit
            Left = 181
            Top = 75
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = edtIBM1Enter
            OnKeyPress = edtIBM2KeyPress
          end
          object edtCradle2: TEdit
            Left = 181
            Top = 42
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = edtCradle2Enter
            OnKeyPress = edtCradle2KeyPress
          end
          object chkSkipIBM2: TCheckBox
            Left = 408
            Top = 82
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 3
            OnClick = chkSkipIBM1Click
          end
          object chkSkipCradle2: TCheckBox
            Left = 408
            Top = 49
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 4
            OnClick = chkSkipCradle2Click
          end
          object edtSkipIBM2: TEdit
            Left = 454
            Top = 75
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
          object edtSkipCradle2: TEdit
            Left = 454
            Top = 42
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
        end
      end
      object Tab3: TTabSheet
        Caption = 'Scan'
        ImageIndex = 2
        OnShow = Tab3Show
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 927
          Height = 145
          Align = alTop
          ParentBackground = False
          TabOrder = 0
          object Label3: TLabel
            Left = 110
            Top = 12
            Width = 64
            Height = 19
            Alignment = taRightJustify
            Caption = 'Set S/N :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 81
            Top = 111
            Width = 93
            Height = 19
            Alignment = taRightJustify
            Caption = 'IB (Manual) :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 118
            Top = 45
            Width = 56
            Height = 19
            Alignment = taRightJustify
            Caption = 'Cradle :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 98
            Top = 78
            Width = 76
            Height = 19
            Alignment = taRightJustify
            Caption = 'DC Cable :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtSetSN3: TEdit
            Left = 180
            Top = 9
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = edtSetSN1Enter
            OnKeyPress = edtSetSN3KeyPress
          end
          object edtIBM3: TEdit
            Left = 180
            Top = 108
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = edtIBM1Enter
            OnKeyPress = edtIBM3KeyPress
          end
          object edtCradle3: TEdit
            Left = 180
            Top = 42
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = edtCradle2Enter
            OnKeyPress = edtCradle3KeyPress
          end
          object edtDcCable3: TEdit
            Left = 180
            Top = 75
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnEnter = edtDcCable3Enter
            OnKeyPress = edtDcCable3KeyPress
          end
          object chkSkipCradle3: TCheckBox
            Left = 407
            Top = 49
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 4
            OnClick = chkSkipCradle2Click
          end
          object chkSkipIBM3: TCheckBox
            Left = 407
            Top = 115
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 5
            OnClick = chkSkipIBM1Click
          end
          object chkSkipDcCable3: TCheckBox
            Left = 407
            Top = 82
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 6
            OnClick = chkSkipDcCable3Click
          end
          object edtSkipCradle3: TEdit
            Left = 454
            Top = 42
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
          object edtSkipIBM3: TEdit
            Left = 453
            Top = 108
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
          object edtSkipDcCable3: TEdit
            Left = 453
            Top = 75
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
        end
      end
      object Tab4: TTabSheet
        Caption = 'Scan'
        ImageIndex = 3
        OnShow = Tab4Show
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 927
          Height = 177
          Align = alTop
          ParentBackground = False
          TabOrder = 0
          object Label4: TLabel
            Left = 110
            Top = 12
            Width = 64
            Height = 19
            Alignment = taRightJustify
            Caption = 'Set S/N :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 81
            Top = 111
            Width = 93
            Height = 19
            Alignment = taRightJustify
            Caption = 'IB (Manual) :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 118
            Top = 45
            Width = 56
            Height = 19
            Alignment = taRightJustify
            Caption = 'Cradle :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 98
            Top = 78
            Width = 76
            Height = 19
            Alignment = taRightJustify
            Caption = 'DC Cable :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 88
            Top = 144
            Width = 86
            Height = 19
            Alignment = taRightJustify
            Caption = 'IB (Install) :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtSetSN4: TEdit
            Left = 180
            Top = 9
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = edtSetSN1Enter
            OnKeyPress = edtSetSN4KeyPress
          end
          object edtIBM4: TEdit
            Left = 180
            Top = 108
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = edtIBM1Enter
            OnKeyPress = edtIBM4KeyPress
          end
          object edtCradle4: TEdit
            Left = 180
            Top = 42
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = edtCradle2Enter
            OnKeyPress = edtCradle4KeyPress
          end
          object edtDcCable4: TEdit
            Left = 180
            Top = 75
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnEnter = edtDcCable3Enter
            OnKeyPress = edtDcCable4KeyPress
          end
          object edtIBI4: TEdit
            Left = 180
            Top = 141
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnEnter = edtIBI4Enter
            OnKeyPress = edtIBI4KeyPress
          end
          object chkSkipDcCable4: TCheckBox
            Left = 407
            Top = 82
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 5
            OnClick = chkSkipDcCable3Click
          end
          object chkSkipCradle4: TCheckBox
            Left = 407
            Top = 49
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 6
            OnClick = chkSkipCradle2Click
          end
          object chkSkipIBM4: TCheckBox
            Left = 407
            Top = 115
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 7
            OnClick = chkSkipIBM1Click
          end
          object chkSkipIBI4: TCheckBox
            Left = 407
            Top = 148
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 8
            OnClick = chkSkipIBI4Click
          end
          object edtSkipDcCable4: TEdit
            Left = 454
            Top = 75
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
          object edtSkipCradle4: TEdit
            Left = 454
            Top = 42
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
          object edtSkipIBM4: TEdit
            Left = 453
            Top = 108
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
          object edtSkipIBI4: TEdit
            Left = 454
            Top = 141
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
        end
      end
      object Tab5: TTabSheet
        Caption = 'Scan'
        ImageIndex = 4
        OnShow = Tab5Show
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 927
          Height = 211
          Align = alTop
          ParentBackground = False
          TabOrder = 0
          object Label21: TLabel
            Left = 110
            Top = 12
            Width = 64
            Height = 19
            Alignment = taRightJustify
            Caption = 'Set S/N :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 81
            Top = 111
            Width = 93
            Height = 19
            Alignment = taRightJustify
            Caption = 'IB (Manual) :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 118
            Top = 45
            Width = 56
            Height = 19
            Alignment = taRightJustify
            Caption = 'Cradle :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 98
            Top = 78
            Width = 76
            Height = 19
            Alignment = taRightJustify
            Caption = 'DC Cable :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 88
            Top = 144
            Width = 86
            Height = 19
            Alignment = taRightJustify
            Caption = 'IB (Install) :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 92
            Top = 177
            Width = 82
            Height = 19
            Alignment = taRightJustify
            Caption = 'Crd Name :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtSetSN5: TEdit
            Left = 180
            Top = 9
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = edtSetSN1Enter
            OnKeyPress = edtSetSN5KeyPress
          end
          object edtIBM5: TEdit
            Left = 180
            Top = 108
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = edtIBM1Enter
            OnKeyPress = edtIBM5KeyPress
          end
          object edtCradle5: TEdit
            Left = 180
            Top = 42
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = edtCradle2Enter
            OnKeyPress = edtCradle5KeyPress
          end
          object edtDcCable5: TEdit
            Left = 180
            Top = 75
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnEnter = edtDcCable3Enter
            OnKeyPress = edtDcCable5KeyPress
          end
          object edtIBI5: TEdit
            Left = 180
            Top = 141
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnEnter = edtIBI4Enter
            OnKeyPress = edtIBI5KeyPress
          end
          object chkSkipDcCable5: TCheckBox
            Left = 407
            Top = 82
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 5
            OnClick = chkSkipDcCable3Click
          end
          object chkSkipCradle5: TCheckBox
            Left = 407
            Top = 49
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 6
            OnClick = chkSkipCradle2Click
          end
          object chkSkipIBM5: TCheckBox
            Left = 407
            Top = 115
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 7
            OnClick = chkSkipIBM1Click
          end
          object chkSkipIBI5: TCheckBox
            Left = 407
            Top = 148
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 8
            OnClick = chkSkipIBI4Click
          end
          object edtCrdName5: TEdit
            Left = 180
            Top = 174
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnEnter = edtCrdName5Enter
            OnKeyPress = edtCrdName5KeyPress
          end
          object chkSkipCrdName5: TCheckBox
            Left = 407
            Top = 181
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 10
            OnClick = chkSkipCrdName5Click
          end
          object edtSkipIBI5: TEdit
            Left = 454
            Top = 141
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
          object edtSkipDcCable5: TEdit
            Left = 454
            Top = 75
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
          object edtSkipCradle5: TEdit
            Left = 454
            Top = 42
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
          object edtSkipIBM5: TEdit
            Left = 454
            Top = 108
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
          object edtSkipCrdName5: TEdit
            Left = 454
            Top = 174
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
        end
      end
      object Tab6: TTabSheet
        Caption = 'Scan'
        ImageIndex = 5
        OnShow = Tab6Show
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 927
          Height = 113
          Align = alTop
          ParentBackground = False
          TabOrder = 0
          object Label29: TLabel
            Left = 110
            Top = 12
            Width = 64
            Height = 19
            Alignment = taRightJustify
            Caption = 'Set S/N :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 82
            Top = 78
            Width = 93
            Height = 19
            Alignment = taRightJustify
            Caption = 'IB (Manual) :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 99
            Top = 45
            Width = 76
            Height = 19
            Alignment = taRightJustify
            Caption = 'DC Cable :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtSetSN6: TEdit
            Left = 181
            Top = 9
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = edtSetSN1Enter
            OnKeyPress = edtSetSN6KeyPress
          end
          object edtIBM6: TEdit
            Left = 181
            Top = 75
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = edtIBM1Enter
            OnKeyPress = edtIBM6KeyPress
          end
          object edtDcCable6: TEdit
            Left = 181
            Top = 42
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = edtDcCable3Enter
            OnKeyPress = edtDcCable6KeyPress
          end
          object chkSkipIBM6: TCheckBox
            Left = 408
            Top = 82
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 3
            OnClick = chkSkipIBM1Click
          end
          object chkSkipDcCable6: TCheckBox
            Left = 408
            Top = 49
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 4
            OnClick = chkSkipDcCable3Click
          end
          object edtSkipIBM6: TEdit
            Left = 454
            Top = 75
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
          object edtSkipDcCable6: TEdit
            Left = 454
            Top = 42
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
        end
      end
      object Tab7: TTabSheet
        Caption = 'Scan'
        ImageIndex = 6
        OnShow = Tab7Show
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 927
          Height = 145
          Align = alTop
          ParentBackground = False
          TabOrder = 0
          object Label32: TLabel
            Left = 110
            Top = 12
            Width = 64
            Height = 19
            Alignment = taRightJustify
            Caption = 'Set S/N :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 99
            Top = 78
            Width = 76
            Height = 19
            Alignment = taRightJustify
            Caption = 'DC Cabel :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 83
            Top = 45
            Width = 92
            Height = 19
            Alignment = taRightJustify
            Caption = 'EAN LABEL :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 118
            Top = 111
            Width = 56
            Height = 19
            Alignment = taRightJustify
            Caption = 'Cradle :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtSetSN7: TEdit
            Left = 180
            Top = 9
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = edtSetSN1Enter
            OnKeyPress = edtSetSN7KeyPress
          end
          object edtDcCable7: TEdit
            Left = 181
            Top = 75
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = edtDcCable7Enter
            OnKeyPress = edtDcCable7KeyPress
          end
          object edtEan7: TEdit
            Left = 181
            Top = 42
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = edtEan7Enter
            OnKeyPress = edtEan7KeyPress
          end
          object chkSkipDcCable7: TCheckBox
            Left = 408
            Top = 83
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 3
            OnClick = chkSkipDcCable3Click
          end
          object edtSkipDcCable7: TEdit
            Left = 454
            Top = 75
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
          object chkSkipEan7: TCheckBox
            Left = 408
            Top = 52
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 5
            OnClick = chkSkipEan7Click
          end
          object edtSkipEan7: TEdit
            Left = 454
            Top = 42
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Visible = False
          end
          object edtCradle7: TEdit
            Left = 180
            Top = 108
            Width = 221
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnEnter = edtCradle7Enter
            OnKeyPress = edtCradle7KeyPress
          end
          object chkSkipCradle7: TCheckBox
            Left = 407
            Top = 116
            Width = 40
            Height = 17
            Caption = 'Skip'
            TabOrder = 8
            OnClick = chkSkipCradle2Click
          end
          object edtSkipCradle7: TEdit
            Left = 453
            Top = 108
            Width = 220
            Height = 27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            Visible = False
            OnKeyPress = edtIBM1KeyPress
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 307
    Width = 937
    Height = 39
    Align = alTop
    TabOrder = 2
    object Label15: TLabel
      Left = 253
      Top = 12
      Width = 87
      Height = 19
      Alignment = taRightJustify
      Caption = 'Output Set :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 494
      Top = 12
      Width = 74
      Height = 19
      Alignment = taRightJustify
      Caption = 'Acc Scan :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 5
      Top = 12
      Width = 43
      Height = 19
      Alignment = taRightJustify
      Caption = 'Date :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 54
      Top = 12
      Width = 94
      Height = 19
      Alignment = taRightJustify
      Caption = '26-03-2018'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 346
      Top = 12
      Width = 10
      Height = 19
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 574
      Top = 12
      Width = 10
      Height = 19
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 346
    Width = 937
    Height = 370
    Align = alClient
    Caption = 'Panel5'
    TabOrder = 3
    object PageControl2: TPageControl
      Left = 1
      Top = 1
      Width = 935
      Height = 368
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'ToDay'
        object grdPair: TSMDBGrid
          Left = 0
          Top = 0
          Width = 927
          Height = 340
          Align = alClient
          DataSource = dsPair
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
          ColCount = 11
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'ACC_MODEL'
              Title.Alignment = taCenter
              Title.Caption = 'Model'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACC_SN'
              Title.Alignment = taCenter
              Title.Caption = 'Set SN'
              Width = 80
              Visible = True
              FooterType = ftCount
            end
            item
              Expanded = False
              FieldName = 'ACC_CRADLE'
              Title.Alignment = taCenter
              Title.Caption = 'Cradle'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACC_CABLE'
              Title.Alignment = taCenter
              Title.Caption = 'DC Cable'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACC_IBM'
              Title.Alignment = taCenter
              Title.Caption = 'IB (Manual)'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACC_IBI'
              Title.Alignment = taCenter
              Title.Caption = 'IB (Install)'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACC_CARDNAME'
              Title.Alignment = taCenter
              Title.Caption = 'Card Name'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACC_EAN'
              Title.Alignment = taCenter
              Title.Caption = 'EAN'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ACC_DATE'
              Title.Alignment = taCenter
              Title.Caption = ' Acc. Date'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'o_createdate'
              Title.Alignment = taCenter
              Title.Caption = 'Prod. Date'
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'History'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object grdHistory: TSMDBGrid
          Left = 0
          Top = 33
          Width = 927
          Height = 307
          Align = alClient
          DataSource = dsHistory
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
          ColCount = 10
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'ACC_MODEL'
              Title.Alignment = taCenter
              Title.Caption = 'Model'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACC_SN'
              Title.Alignment = taCenter
              Title.Caption = 'Set SN'
              Width = 80
              Visible = True
              FooterType = ftCount
            end
            item
              Expanded = False
              FieldName = 'ACC_CRADLE'
              Title.Alignment = taCenter
              Title.Caption = 'Cradle'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACC_CABLE'
              Title.Alignment = taCenter
              Title.Caption = 'DC Cable'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACC_IBM'
              Title.Alignment = taCenter
              Title.Caption = 'IB (Manual)'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACC_IBI'
              Title.Alignment = taCenter
              Title.Caption = 'IB (Install)'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACC_CARDNAME'
              Title.Alignment = taCenter
              Title.Caption = 'Card Name'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ACC_DATE'
              Title.Alignment = taCenter
              Title.Caption = 'Acc. Date'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'o_createdate'
              Title.Alignment = taCenter
              Title.Caption = 'Prod. Date'
              Visible = True
            end>
        end
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 927
          Height = 33
          Align = alTop
          ParentBackground = False
          TabOrder = 1
          object Label27: TLabel
            Left = 126
            Top = 10
            Width = 8
            Height = 13
            Caption = '~'
          end
          object Label28: TLabel
            Left = 11
            Top = 10
            Width = 23
            Height = 13
            Caption = 'Date'
          end
          object btnRefresh: TButton
            Left = 224
            Top = 6
            Width = 49
            Height = 24
            Caption = 'Refresh'
            TabOrder = 0
            OnClick = btnRefreshClick
          end
          object dtpDateEnd: TDateTimePicker
            Left = 138
            Top = 7
            Width = 80
            Height = 21
            Date = 39351.291666666660000000
            Time = 39351.291666666660000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object dtpDateStart: TDateTimePicker
            Left = 40
            Top = 7
            Width = 80
            Height = 21
            Date = 39351.291666666660000000
            Time = 39351.291666666660000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object btnExcel: TButton
            Left = 279
            Top = 6
            Width = 40
            Height = 24
            Caption = 'Excel'
            Enabled = False
            TabOrder = 3
            OnClick = btnExcelClick
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Gap'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object SMDBGrid1: TSMDBGrid
          Left = 0
          Top = 0
          Width = 927
          Height = 340
          Align = alClient
          DataSource = dsNotScan
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
          ColCount = 4
          RowCount = 2
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'O_BUYERSERIALNO'
              Title.Alignment = taCenter
              Title.Caption = 'S/N'
              Width = 80
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'acc_date'
              Title.Alignment = taCenter
              Title.Caption = 'Acc. Date'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'o_createdate'
              Title.Alignment = taCenter
              Title.Caption = 'Prod. Date'
              Visible = True
            end>
        end
      end
    end
  end
  object btnReset: TButton
    Left = 412
    Top = 100
    Width = 40
    Height = 24
    Caption = 'Reset'
    TabOrder = 4
    OnClick = btnResetClick
  end
  object Panel27: TPanel
    Left = 458
    Top = 96
    Width = 359
    Height = 30
    Caption = 'PASS'
    Color = clTeal
    DragCursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    Visible = False
  end
  object Qry: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 72
    Top = 8
  end
  object Qry_GetServerTime: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    BeforeOpen = Qry_GetServerTimeBeforeOpen
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
      'exec spGetServerTime :App')
    Left = 40
    Top = 8
    object Qry_GetServerTimeServerTime: TDateTimeField
      FieldName = 'ServerTime'
      ReadOnly = True
    end
    object Qry_GetServerTimeApproval: TStringField
      FieldName = 'Approval'
      ReadOnly = True
      Size = 4
    end
    object Qry_GetServerTimeStartOfThisWeek: TDateTimeField
      FieldName = 'StartOfThisWeek'
      ReadOnly = True
    end
    object Qry_GetServerTimeEndOfThisWeek: TDateTimeField
      FieldName = 'EndOfThisWeek'
      ReadOnly = True
    end
    object Qry_GetServerTimeStartOfLastMonth: TDateTimeField
      FieldName = 'StartOfLastMonth'
      ReadOnly = True
    end
    object Qry_GetServerTimeEndOfLastMonth: TDateTimeField
      FieldName = 'EndOfLastMonth'
      ReadOnly = True
    end
    object Qry_GetServerTimeStartOfThisMonth: TDateTimeField
      FieldName = 'StartOfThisMonth'
      ReadOnly = True
    end
    object Qry_GetServerTimeEndOfThisMonth: TDateTimeField
      FieldName = 'EndOfThisMonth'
      ReadOnly = True
    end
    object Qry_GetServerTimeStartOfNextMonth: TDateTimeField
      FieldName = 'StartOfNextMonth'
      ReadOnly = True
    end
    object Qry_GetServerTimeEndOfNextMonth: TDateTimeField
      FieldName = 'EndOfNextMonth'
      ReadOnly = True
    end
    object Qry_GetServerTimeStartOfYear: TDateTimeField
      FieldName = 'StartOfYear'
      ReadOnly = True
    end
    object Qry_GetServerTimeEndOfYear: TDateTimeField
      FieldName = 'EndOfYear'
      ReadOnly = True
    end
    object Qry_GetServerTimeNameOfThisMonth: TWideStringField
      FieldName = 'NameOfThisMonth'
      ReadOnly = True
      Size = 30
    end
    object Qry_GetServerTimeThisYear: TStringField
      FieldName = 'ThisYear'
      ReadOnly = True
      Size = 4
    end
    object Qry_GetServerTimeVersion: TWideStringField
      FieldName = 'Version'
      ReadOnly = True
      Size = 25
    end
  end
  object DBConnection: TADOConnection
    CommandTimeout = 0
    ConnectionTimeout = 8
    DefaultDatabase = 'sct'
    IsolationLevel = ilReadCommitted
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'SQLOLEDB.1'
    AfterConnect = DBConnectionAfterConnect
    BeforeConnect = DBConnectionBeforeConnect
    Left = 8
    Top = 8
  end
  object qryPair: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    BeforeOpen = qryPairBeforeOpen
    Parameters = <
      item
        Name = 'sModel'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 25
        Value = Null
      end
      item
        Name = 'sDate'
        DataType = ftString
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select a.*,b.o_createdate from T_PAIR_ACC a'
      'left join t_scan_output b on o_pbaserialno = acc_pbasn'
      'where ACC_MODEL = :sModel'
      'and ACC_DATE >= :sDate'
      'order by ACC_DATE desc')
    Left = 56
    Top = 480
    object qryPairACC_MODEL: TStringField
      FieldName = 'ACC_MODEL'
      Size = 25
    end
    object qryPairACC_SN: TStringField
      FieldName = 'ACC_SN'
      Size = 25
    end
    object qryPairACC_PBASN: TStringField
      FieldName = 'ACC_PBASN'
      Size = 10
    end
    object qryPairACC_IBM: TStringField
      FieldName = 'ACC_IBM'
      Size = 50
    end
    object qryPairACC_IBI: TStringField
      FieldName = 'ACC_IBI'
      Size = 50
    end
    object qryPairACC_CRADLE: TStringField
      FieldName = 'ACC_CRADLE'
      Size = 50
    end
    object qryPairACC_CABLE: TStringField
      FieldName = 'ACC_CABLE'
      Size = 50
    end
    object qryPairACC_CARDNAME: TStringField
      FieldName = 'ACC_CARDNAME'
      Size = 50
    end
    object qryPairACC_EAN: TStringField
      Alignment = taCenter
      FieldName = 'ACC_EAN'
      Size = 50
    end
    object qryPairACC_DATE: TDateTimeField
      FieldName = 'ACC_DATE'
    end
    object qryPairo_createdate: TDateTimeField
      FieldName = 'o_createdate'
    end
  end
  object dsPair: TDataSource
    AutoEdit = False
    DataSet = qryPair
    Left = 22
    Top = 480
  end
  object qrySetCount: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    BeforeOpen = qrySetCountBeforeOpen
    AfterOpen = qrySetCountAfterOpen
    Parameters = <
      item
        Name = 'sModel'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 25
        Value = Null
      end
      item
        Name = 'sDate'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select count(*) Qty from t_scan_output'
      'where o_model = :sModel'
      'and o_createdate >= :sDate')
    Left = 88
    Top = 480
    object qrySetCountQty: TIntegerField
      FieldName = 'Qty'
      ReadOnly = True
    end
  end
  object qryAccCount: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    BeforeOpen = qryAccCountBeforeOpen
    AfterOpen = qryAccCountAfterOpen
    Parameters = <
      item
        Name = 'sModel'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 25
        Value = Null
      end
      item
        Name = 'sDate'
        DataType = ftString
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select count(*) Qty from T_PAIR_ACC'
      'where ACC_MODEL = :sModel'
      'and ACC_DATE >= :sDate')
    Left = 120
    Top = 480
    object qryAccCountQty: TIntegerField
      FieldName = 'Qty'
      ReadOnly = True
    end
  end
  object sdExcel: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Microsoft Excel Files|*.xls'
    Left = 184
    Top = 480
  end
  object qryHistory: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    BeforeOpen = qryHistoryBeforeOpen
    Parameters = <
      item
        Name = 'sModel'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 25
        Value = Null
      end
      item
        Name = 'sDateStart'
        DataType = ftString
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'sDateEnd'
        DataType = ftString
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select a.*,b.o_createdate from T_PAIR_ACC a'
      'left join t_scan_output b on o_pbaserialno = acc_pbasn'
      'where ACC_MODEL = :sModel'
      'and ACC_DATE >= :sDateStart'
      'and ACC_DATE < :sDateEnd'
      'order by ACC_DATE desc')
    Left = 56
    Top = 512
    object StringField1: TStringField
      FieldName = 'ACC_MODEL'
      Size = 25
    end
    object StringField2: TStringField
      FieldName = 'ACC_SN'
      Size = 25
    end
    object StringField3: TStringField
      FieldName = 'ACC_PBASN'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'ACC_IBM'
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'ACC_IBI'
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'ACC_CRADLE'
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'ACC_CABLE'
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'ACC_CARDNAME'
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'ACC_DATE'
    end
    object qryHistoryo_createdate: TDateTimeField
      FieldName = 'o_createdate'
    end
  end
  object dsHistory: TDataSource
    AutoEdit = False
    DataSet = qryHistory
    Left = 22
    Top = 512
  end
  object qryNotScan: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    BeforeOpen = qryNotScanBeforeOpen
    Parameters = <
      item
        Name = 'sModel'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 25
        Value = Null
      end
      item
        Name = 'sDate'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'sModel2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 25
        Value = Null
      end
      item
        Name = 'sDate2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select O_BUYERSERIALNO,acc_date,o_createdate from T_scan_output'
      'left outer join T_PAIR_ACC on o_pbaserialno = acc_pbasn'
      'where o_model = :sModel'
      'and o_createdate >= :sDate'
      'and isnull(acc_pbasn,'#39#39') = '#39#39
      'union all'
      'select O_BUYERSERIALNO,acc_date,o_createdate from T_PAIR_ACC'
      'left outer join T_scan_output on o_pbaserialno = acc_pbasn'
      'where acc_model = :sModel2'
      'and acc_date >= :sDate2'
      'and datediff(day,o_createdate,acc_date) >= 1'
      'order by o_createdate desc')
    Left = 56
    Top = 448
    object qryNotScanO_BUYERSERIALNO: TStringField
      FieldName = 'O_BUYERSERIALNO'
      Size = 25
    end
    object qryNotScano_createdate: TDateTimeField
      FieldName = 'o_createdate'
    end
    object qryNotScanacc_date: TDateTimeField
      FieldName = 'acc_date'
      ReadOnly = True
    end
  end
  object dsNotScan: TDataSource
    AutoEdit = False
    DataSet = qryNotScan
    Left = 22
    Top = 448
  end
  object SP_Menu_Option: TADOStoredProc
    Connection = DBConnection
    ProcedureName = 'SP_Menu_Option;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Model'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Item'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@Flag'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 4
        Value = Null
      end>
    Left = 216
    Top = 480
  end
end
