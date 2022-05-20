object FrmControle: TFrmControle
  Left = 372
  Top = 95
  Width = 485
  Height = 343
  Color = clBtnFace
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 449
    Height = 281
    DataSource = DM.DS_FilterMicro
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'NomeMicro'
        Title.Caption = 'Terminal'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodMicro'
        Title.Caption = 'Codigo'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Caption = 'Usuario'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lab'
        Title.Caption = 'Laboratorio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Width = 61
        Visible = True
      end>
  end
end
