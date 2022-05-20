object FrmConCli: TFrmConCli
  Left = 203
  Top = 223
  Width = 643
  Height = 380
  Caption = 'VideoLoc Manager - Consulta de Cliente'
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 40
    Height = 16
    Caption = 'Nome :'
  end
  object Label2: TLabel
    Left = 176
    Top = 56
    Width = 44
    Height = 16
    Caption = 'Cidade :'
  end
  object Label4: TLabel
    Left = 32
    Top = 56
    Width = 24
    Height = 16
    Caption = 'RG :'
  end
  object EdtNome: TEdit
    Left = 32
    Top = 32
    Width = 265
    Height = 24
    TabOrder = 0
  end
  object EdtCidade: TEdit
    Left = 176
    Top = 72
    Width = 121
    Height = 24
    TabOrder = 1
  end
  object EdtRG: TEdit
    Left = 32
    Top = 72
    Width = 121
    Height = 24
    TabOrder = 2
  end
  object GrpBxAniver: TGroupBox
    Left = 320
    Top = 32
    Width = 121
    Height = 81
    Caption = 'Anivers'#225'rio'
    Enabled = False
    TabOrder = 3
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 17
      Height = 16
      Caption = 'Dia'
    end
    object Label5: TLabel
      Left = 16
      Top = 48
      Width = 22
      Height = 16
      Caption = 'M'#234's'
    end
    object SpnEdtDia: TSpinEdit
      Left = 48
      Top = 16
      Width = 49
      Height = 26
      MaxValue = 31
      MinValue = 1
      TabOrder = 0
      Value = 1
    end
    object SpnEdtMes: TSpinEdit
      Left = 48
      Top = 48
      Width = 49
      Height = 26
      MaxValue = 12
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
  end
  object ChckBxAniver: TCheckBox
    Left = 320
    Top = 16
    Width = 97
    Height = 17
    Caption = 'Habilitar'
    TabOrder = 4
    OnClick = ChckBxAniverClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 136
    Width = 635
    Height = 210
    Align = alBottom
    DataSource = DM.DtSrcConCli
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = [fsBold]
  end
  object BtBtnPesquisar: TBitBtn
    Left = 488
    Top = 24
    Width = 121
    Height = 41
    Caption = 'Pesquisar'
    TabOrder = 6
    OnClick = BtBtnPesquisarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
  end
  object BtBtnImprimir: TBitBtn
    Left = 488
    Top = 72
    Width = 121
    Height = 41
    Caption = 'Imprimir'
    TabOrder = 7
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
end
