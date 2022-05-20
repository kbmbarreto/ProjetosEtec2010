object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 203
  Top = 143
  Height = 438
  Width = 553
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 'FILE NAME=C:\Video_Manager\conex.udl'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 8
  end
  object ADOQrCadUsu: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = ADOQrCadUsuAfterPost
    AfterCancel = ADOQrCadUsuAfterCancel
    Parameters = <>
    SQL.Strings = (
      'select * from usuario')
    Left = 40
    Top = 56
    object ADOQrCadUsuUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object ADOQrCadUsuSENHA: TStringField
      FieldName = 'SENHA'
      Size = 6
    end
  end
  object DtSrcCadUsu: TDataSource
    DataSet = ADOQrCadUsu
    OnDataChange = DtSrcCadUsuDataChange
    Left = 40
    Top = 112
  end
  object ADOQrVerifUsu: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'usu'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'senha'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      'select * from usuario where usuario = :usu and senha = :senha')
    Left = 40
    Top = 168
    object ADOQrVerifUsuUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object ADOQrVerifUsuSENHA: TStringField
      FieldName = 'SENHA'
      Size = 6
    end
  end
  object ADOQryCadCat: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from categoria')
    Left = 120
    Top = 8
    object ADOQryCadCatCOD_CATEGORIA: TBCDField
      FieldName = 'COD_CATEGORIA'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object ADOQryCadCatNOME_CATEGORIA: TStringField
      FieldName = 'NOME_CATEGORIA'
    end
  end
  object DtSrcCadCat: TDataSource
    DataSet = ADOQryCadCat
    Left = 120
    Top = 56
  end
  object DtSrcCadCli: TDataSource
    DataSet = ADOQryCadCli
    Left = 120
    Top = 112
  end
  object ADOQryCadCli: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from clientes')
    Left = 120
    Top = 168
    object ADOQryCadCliCOD_CLIENTE: TBCDField
      FieldName = 'COD_CLIENTE'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOQryCadCliRG: TStringField
      FieldName = 'RG'
      Size = 9
    end
    object ADOQryCadCliNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object ADOQryCadCliENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object ADOQryCadCliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object ADOQryCadCliCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object ADOQryCadCliESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object ADOQryCadCliTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '[99]9999-9999;1;_'
      Size = 15
    end
    object ADOQryCadCliEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object ADOQryCadCliDATANASCIMENTO: TDateTimeField
      FieldName = 'DATANASCIMENTO'
      EditMask = '99/99/9999;1;_'
    end
    object ADOQryCadClisexo: TStringField
      FieldName = 'sexo'
      FixedChar = True
      Size = 1
    end
  end
  object ADOQrListCat: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from categoria')
    Left = 208
    Top = 56
  end
  object DtSrcListCat: TDataSource
    DataSet = ADOQrListCat
    Left = 296
    Top = 56
  end
  object ADOQrCadFil: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from filme')
    Left = 208
    Top = 8
    object ADOQrCadFilCOD_FILME: TBCDField
      FieldName = 'COD_FILME'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOQrCadFilFILME: TStringField
      FieldName = 'FILME'
      Size = 30
    end
    object ADOQrCadFilCOD_CATEGORIA: TBCDField
      FieldName = 'COD_CATEGORIA'
      Precision = 10
      Size = 0
    end
    object ADOQrCadFilDIRETOR: TStringField
      FieldName = 'DIRETOR'
      Size = 50
    end
    object ADOQrCadFilVALOR_LOCACAO: TFloatField
      FieldName = 'VALOR_LOCACAO'
      currency = True
    end
    object ADOQrCadFilRESERVADA: TStringField
      FieldName = 'RESERVADA'
      FixedChar = True
      Size = 1
    end
    object ADOQrCadFilNome_Categoria: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Categoria'
      LookupDataSet = ADOQrListCat
      LookupKeyFields = 'COD_CATEGORIA'
      LookupResultField = 'NOME_CATEGORIA'
      KeyFields = 'COD_CATEGORIA'
      Lookup = True
    end
  end
  object DtSrcCadFil: TDataSource
    DataSet = ADOQrCadFil
    Left = 296
    Top = 8
  end
  object ADOQrAux: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 208
    Top = 112
  end
  object ADOQrConCli: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from clientes')
    Left = 376
    Top = 8
    object ADOQrConCliCOD_CLIENTE: TBCDField
      FieldName = 'COD_CLIENTE'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOQrConCliRG: TStringField
      FieldName = 'RG'
      Size = 9
    end
    object ADOQrConCliNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object ADOQrConCliENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object ADOQrConCliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object ADOQrConCliCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object ADOQrConCliESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object ADOQrConCliTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object ADOQrConCliEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object ADOQrConCliDATANASCIMENTO: TDateTimeField
      FieldName = 'DATANASCIMENTO'
    end
    object ADOQrConClisexo: TStringField
      FieldName = 'sexo'
      FixedChar = True
      Size = 1
    end
  end
  object DtSrcConCli: TDataSource
    DataSet = ADOQrConCli
    Left = 376
    Top = 56
  end
  object ADOQrLocacao: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from locacoes')
    Left = 296
    Top = 168
    object ADOQrLocacaoCOD_LOCACAO: TBCDField
      FieldName = 'COD_LOCACAO'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOQrLocacaoCOD_CLIENTE: TBCDField
      FieldName = 'COD_CLIENTE'
      Precision = 18
      Size = 0
    end
    object ADOQrLocacaoCOD_FILME: TBCDField
      FieldName = 'COD_FILME'
      Precision = 18
      Size = 0
    end
    object ADOQrLocacaoDATA_RETIRADA: TDateTimeField
      FieldName = 'DATA_RETIRADA'
    end
    object ADOQrLocacaoDATA_DEVOLUCAO: TDateTimeField
      FieldName = 'DATA_DEVOLUCAO'
    end
    object ADOQrLocacaoNome_cliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_cliente'
      LookupDataSet = ADOQryCadCli
      LookupKeyFields = 'COD_CLIENTE'
      LookupResultField = 'NOME'
      KeyFields = 'COD_CLIENTE'
      Size = 100
      Lookup = True
    end
    object ADOQrLocacaonome_Filme: TStringField
      FieldKind = fkLookup
      FieldName = 'nome_Filme'
      LookupDataSet = ADOQrCadFil
      LookupKeyFields = 'COD_FILME'
      LookupResultField = 'FILME'
      KeyFields = 'COD_FILME'
      Size = 100
      Lookup = True
    end
    object ADOQrLocacaoValor_Filme: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'Valor_Filme'
      LookupDataSet = ADOQrCadFil
      LookupKeyFields = 'COD_FILME'
      LookupResultField = 'VALOR_LOCACAO'
      KeyFields = 'COD_FILME'
      Lookup = True
    end
  end
  object DtSrcLocacao: TDataSource
    DataSet = ADOQrLocacao
    Left = 208
    Top = 168
  end
  object ADOQrPesquisar: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 296
    Top = 112
  end
  object DtSrcPesquisar: TDataSource
    DataSet = ADOQrPesquisar
    Left = 376
    Top = 112
  end
  object ADOQrDevolucao: TADOQuery
    Connection = ADOConnection1
    OnCalcFields = ADOQrDevolucaoCalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from locacoes where data_devolucao is null')
    Left = 376
    Top = 168
    object ADOQrDevolucaoDATA_RETIRADA: TDateTimeField
      FieldName = 'DATA_RETIRADA'
    end
    object ADOQrDevolucaoNome_Cliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Cliente'
      LookupDataSet = ADOQryCadCli
      LookupKeyFields = 'COD_CLIENTE'
      LookupResultField = 'NOME'
      KeyFields = 'COD_CLIENTE'
      Size = 50
      Lookup = True
    end
    object ADOQrDevolucaoNome_Filme: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Filme'
      LookupDataSet = ADOQrCadFil
      LookupKeyFields = 'COD_FILME'
      LookupResultField = 'FILME'
      KeyFields = 'COD_FILME'
      Size = 50
      Lookup = True
    end
    object ADOQrDevolucaoValor: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
    object ADOQrDevolucaoCOD_CLIENTE: TBCDField
      FieldName = 'COD_CLIENTE'
      Precision = 18
      Size = 0
    end
    object ADOQrDevolucaoCOD_FILME: TBCDField
      FieldName = 'COD_FILME'
      Precision = 18
      Size = 0
    end
    object ADOQrDevolucaoCOD_LOCACAO: TBCDField
      FieldName = 'COD_LOCACAO'
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ADOQrDevolucaoDATA_DEVOLUCAO: TDateTimeField
      FieldName = 'DATA_DEVOLUCAO'
    end
    object ADOQrDevolucaovalor_total: TBCDField
      FieldName = 'valor_total'
      Precision = 19
    end
  end
  object DtSrcDevolucao: TDataSource
    DataSet = ADOQrDevolucao
    Left = 456
    Top = 8
  end
end
