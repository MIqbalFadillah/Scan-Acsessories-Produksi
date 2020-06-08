object frmMsg: TfrmMsg
  Left = 183
  Top = 499
  BorderIcons = []
  Caption = 'MessageBox'
  ClientHeight = 183
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblMsg: TLabel
    Left = 0
    Top = 0
    Width = 416
    Height = 183
    Align = alClient
    Alignment = taCenter
    AutoSize = False
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -35
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
    ExplicitLeft = 216
    ExplicitTop = 80
    ExplicitWidth = 794
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 750
    OnTimer = Timer1Timer
    Left = 180
    Top = 88
  end
end
