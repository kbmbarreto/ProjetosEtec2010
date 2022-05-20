object Form1: TForm1
  Left = 215
  Top = 198
  Width = 696
  Height = 441
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 152
    Width = 433
    Height = 185
    DataSource = DS_Usuario
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 56
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 184
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Q_pastas: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'st'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '0'
      end>
    SQL.Strings = (
      'select * from pacr where st =:st')
    Left = 136
    Top = 8
    object Q_pastasTurma: TIntegerField
      FieldName = 'Turma'
    end
    object Q_pastasst: TIntegerField
      FieldName = 'st'
    end
    object Q_pastasCod_pasta: TAutoIncField
      FieldName = 'Cod_pasta'
      ReadOnly = True
    end
  end
  object DS_pastas: TDataSource
    DataSet = Q_pastas
    Left = 176
    Top = 8
  end
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'FILE NAME=C:\Documents and Settings\kelverty\Desktop\SIGLI\Fonte' +
      '\Conect.udl'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
    Top = 8
  end
  object Q_Usuario: TADOQuery
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cod'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Usuario where codTurma =:cod')
    Left = 72
    Top = 16
    object Q_UsuarioLogin: TWideStringField
      FieldName = 'Login'
      Size = 50
    end
    object Q_UsuarioSenha: TWideStringField
      FieldName = 'Senha'
      Size = 50
    end
    object Q_UsuarioNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object Q_UsuarioCod_Nivel: TIntegerField
      FieldName = 'Cod_Nivel'
    end
    object Q_UsuarioCodTurma: TIntegerField
      FieldName = 'CodTurma'
    end
    object Q_UsuarioRa: TWideStringField
      FieldName = 'Ra'
      Size = 50
    end
    object Q_UsuarioIdade: TWideStringField
      FieldName = 'Idade'
      Size = 50
    end
  end
  object DS_Usuario: TDataSource
    DataSet = Q_Usuario
    Left = 288
    Top = 56
  end
  object ServerSocket1: TServerSocket
    Active = True
    Port = 110
    ServerType = stNonBlocking
    OnClientRead = ServerSocket1ClientRead
    Left = 464
    Top = 16
  end
end
