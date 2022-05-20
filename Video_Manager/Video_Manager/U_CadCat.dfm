object FrmCadCat: TFrmCadCat
  Left = 355
  Top = 217
  Width = 404
  Height = 243
  Caption = 'VideoLoc Manager - Cadastro de Categoria'
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial Black'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 117
    Height = 15
    Caption = 'COD. CATEGORIA :'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 40
    Top = 96
    Width = 116
    Height = 15
    Caption = 'NOME_CATEGORIA'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit
    Left = 40
    Top = 40
    Width = 147
    Height = 23
    DataField = 'COD_CATEGORIA'
    DataSource = DM.DtSrcCadCat
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 40
    Top = 112
    Width = 264
    Height = 23
    DataField = 'NOME_CATEGORIA'
    DataSource = DM.DtSrcCadCat
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 184
    Width = 396
    Height = 25
    DataSource = DM.DtSrcCadCat
    Align = alBottom
    TabOrder = 2
  end
end
