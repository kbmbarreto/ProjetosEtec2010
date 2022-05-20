object FrmDevolucao: TFrmDevolucao
  Left = 190
  Top = 114
  Width = 698
  Height = 520
  Caption = 'VideoLoc Manager - Devolu'#231#227'o de Filmes'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 392
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 8
    Width = 657
    Height = 369
    DataSource = DM.DtSrcDevolucao
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BtnDevolucao: TButton
    Left = 488
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Devolu'#231#227'o'
    TabOrder = 1
    OnClick = BtnDevolucaoClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 128
    Top = 408
    Width = 145
    Height = 21
    KeyField = 'COD_CLIENTE'
    ListField = 'NOME'
    ListSource = DM.DtSrcCadCli
    TabOrder = 2
    OnCloseUp = DBLookupComboBox1CloseUp
  end
end
