object FrmVisCli: TFrmVisCli
  Left = 255
  Top = 159
  Width = 565
  Height = 314
  Caption = 'VideoLoc Manager - Visualiza'#231#227'o de Clientes'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 77
    Height = 21
    Caption = 'Localizar :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdtLocalizar: TEdit
    Left = 128
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = EdtLocalizarChange
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 112
    Width = 557
    Height = 168
    Align = alBottom
    DataSource = DM.DtSrcCadCli
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end>
  end
end
