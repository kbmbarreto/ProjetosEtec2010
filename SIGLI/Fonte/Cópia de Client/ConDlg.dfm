object frmConDlg: TfrmConDlg
  Left = 506
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Confirme Conec'#231#227'o-SIGLI '#174
  ClientHeight = 115
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 74
    Width = 324
    Height = 41
    Align = alBottom
    TabOrder = 0
    object bOK: TBitBtn
      Left = 157
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = bOKClick
      Kind = bkOK
    end
    object bCancel: TBitBtn
      Left = 241
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = bCancelClick
      Kind = bkCancel
    end
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = -1
    Width = 310
    Height = 69
    Caption = 'Conectar'
    TabOrder = 1
    object Label5: TLabel
      Left = 15
      Top = 20
      Width = 10
      Height = 13
      Alignment = taRightJustify
      Caption = 'IP'
    end
    object Label8: TLabel
      Left = 224
      Top = 20
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Porta'
    end
    object edHost: TEdit
      Left = 10
      Top = 36
      Width = 207
      Height = 21
      TabOrder = 0
      Text = 'localhost'
    end
    object sedPort: TSpinEdit
      Left = 224
      Top = 35
      Width = 78
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
  end
end
