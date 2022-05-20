object FrmCadFil: TFrmCadFil
  Left = 247
  Top = 135
  Width = 708
  Height = 482
  Caption = 'VideoLoc Manager - Cadastro de Filme'
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 144
    Top = 8
    Width = 37
    Height = 16
    Caption = 'FILME'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 106
    Height = 16
    Caption = 'C'#243'digo CATEGORIA'
  end
  object Label3: TLabel
    Left = 16
    Top = 104
    Width = 52
    Height = 16
    Caption = 'DIRETOR'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 264
    Top = 56
    Width = 117
    Height = 16
    Caption = 'VALOR DA LOCACAO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 16
    Top = 8
    Width = 76
    Height = 16
    Caption = 'C'#243'digo FILME'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 144
    Top = 24
    Width = 361
    Height = 24
    DataField = 'FILME'
    DataSource = DM.DtSrcCadFil
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 120
    Width = 265
    Height = 24
    DataField = 'DIRETOR'
    DataSource = DM.DtSrcCadFil
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 264
    Top = 72
    Width = 134
    Height = 24
    DataField = 'VALOR_LOCACAO'
    DataSource = DM.DtSrcCadFil
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 24
    Width = 65
    Height = 24
    DataField = 'COD_FILME'
    DataSource = DM.DtSrcCadFil
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 224
    Width = 700
    Height = 224
    Align = alBottom
    DataSource = DM.DtSrcCadFil
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'FILME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_Categoria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_LOCACAO'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 199
    Width = 700
    Height = 25
    DataSource = DM.DtSrcCadFil
    Align = alBottom
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 72
    Width = 145
    Height = 24
    DataField = 'COD_CATEGORIA'
    DataSource = DM.DtSrcCadFil
    KeyField = 'COD_CATEGORIA'
    ListField = 'NOME_CATEGORIA'
    ListSource = DM.DtSrcListCat
    TabOrder = 6
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 312
    Top = 112
    Width = 129
    Height = 41
    Caption = 'Reservado?'
    Columns = 2
    DataField = 'RESERVADA'
    DataSource = DM.DtSrcCadFil
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 7
    Values.Strings = (
      'S'
      'N')
  end
end
