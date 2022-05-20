object FrmPesquisar: TFrmPesquisar
  Left = 188
  Top = 144
  Width = 828
  Height = 423
  Caption = 'VideoLoc Manager - Pesquisar'
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Comic Sans MS'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 57
    Height = 19
    Caption = 'Pesquisar'
  end
  object EdtPesquisar: TEdit
    Left = 24
    Top = 48
    Width = 297
    Height = 27
    TabOrder = 0
    OnChange = EdtPesquisarChange
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 100
    Width = 820
    Height = 289
    Align = alBottom
    DataSource = DM.DtSrcPesquisar
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGrid1DblClick
  end
end
