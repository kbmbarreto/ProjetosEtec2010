object DM: TDM
  OldCreateOrder = False
  Left = 95
  Top = 286
  Height = 329
  Width = 930
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 'FILE NAME=C:\SIGLI\Conect.udl'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
    Top = 8
  end
  object Q_Laboratorio: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Laboratorio')
    Left = 96
    Top = 8
    object Q_LaboratorioCodLAb: TAutoIncField
      DisplayWidth = 18
      FieldName = 'CodLAb'
      ReadOnly = True
    end
    object Q_LaboratorioNomeLAb: TWideStringField
      DisplayWidth = 73
      FieldName = 'NomeLAb'
      Size = 50
    end
  end
  object Q_Micro: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from micro')
    Left = 160
    Top = 8
    object Q_MicroNomeMicro: TWideStringField
      FieldName = 'NomeMicro'
      Size = 50
    end
    object Q_MicroIP: TWideStringField
      FieldName = 'IP'
      Size = 50
    end
    object Q_MicroLab: TIntegerField
      FieldName = 'Lab'
    end
    object Q_MicroStatus: TWideStringField
      FieldName = 'Status'
      Size = 50
    end
    object Q_MicroCodMicro: TAutoIncField
      FieldName = 'CodMicro'
      ReadOnly = True
    end
    object Q_MicroUSUARIO: TWideStringField
      FieldName = 'USUARIO'
      Size = 50
    end
  end
  object DS_laboratorio: TDataSource
    DataSet = Q_Laboratorio
    Left = 96
    Top = 56
  end
  object DS_Micro: TDataSource
    AutoEdit = False
    DataSet = Q_Micro
    OnDataChange = DS_MicroDataChange
    Left = 168
    Top = 56
  end
  object Q_FilterMicro: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Plab'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select * from micro '
      'where'
      'lab =:Plab')
    Left = 224
    Top = 8
    object Q_FilterMicroNomeMicro: TWideStringField
      DisplayWidth = 12
      FieldName = 'NomeMicro'
      Size = 50
    end
    object Q_FilterMicroCodMicro: TAutoIncField
      DisplayWidth = 12
      FieldName = 'CodMicro'
      ReadOnly = True
    end
    object Q_FilterMicroIP: TWideStringField
      DisplayWidth = 36
      FieldName = 'IP'
      Size = 50
    end
    object Q_FilterMicroLab: TIntegerField
      DisplayWidth = 12
      FieldName = 'Lab'
    end
    object Q_FilterMicroStatus: TWideStringField
      DisplayWidth = 60
      FieldName = 'Status'
      Size = 50
    end
    object Q_FilterMicroUSUARIO: TWideStringField
      FieldName = 'USUARIO'
      Size = 50
    end
  end
  object DS_FilterMicro: TDataSource
    DataSet = Q_FilterMicro
    Left = 224
    Top = 56
  end
  object Q_Usuario: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Usuario')
    Left = 288
    Top = 8
    object Q_UsuarioLogin: TWideStringField
      DisplayWidth = 23
      FieldName = 'Login'
      Size = 50
    end
    object Q_UsuarioSenha: TWideStringField
      DisplayWidth = 24
      FieldName = 'Senha'
      Size = 50
    end
    object Q_UsuarioNome: TWideStringField
      DisplayWidth = 19
      FieldName = 'Nome'
      Size = 50
    end
    object Q_UsuarioCodTurma: TIntegerField
      DisplayWidth = 15
      FieldName = 'CodTurma'
    end
    object Q_UsuarioCod_Nivel: TIntegerField
      DisplayWidth = 12
      FieldName = 'Cod_Nivel'
    end
    object Q_UsuarioRa: TWideStringField
      DisplayWidth = 60
      FieldName = 'Ra'
      Size = 50
    end
    object Q_UsuarioIdade: TWideStringField
      DisplayWidth = 60
      FieldName = 'Idade'
      Size = 50
    end
    object Q_UsuarioNivel: TStringField
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'Nivel'
      LookupDataSet = Q_Nivel
      LookupKeyFields = 'Cod_nivel'
      LookupResultField = 'NIvel'
      KeyFields = 'Cod_Nivel'
      Size = 15
      Lookup = True
    end
    object Q_UsuarioTurma: TStringField
      FieldKind = fkLookup
      FieldName = 'Turma'
      LookupDataSet = Q_Turma
      LookupKeyFields = 'CODTurma'
      LookupResultField = 'Turma'
      KeyFields = 'CodTurma'
      Lookup = True
    end
  end
  object DS_Usuario: TDataSource
    DataSet = Q_Usuario
    Left = 288
    Top = 56
  end
  object Q_Nivel: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from nivel')
    Left = 344
    Top = 8
  end
  object DS_nivel: TDataSource
    DataSet = Q_Nivel
    Left = 344
    Top = 56
  end
  object Q_Turma: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from turma')
    Left = 392
    Top = 8
    object Q_TurmaCODTurma: TAutoIncField
      DisplayWidth = 18
      FieldName = 'CODTurma'
      ReadOnly = True
    end
    object Q_TurmaTurma: TWideStringField
      DisplayWidth = 30
      FieldName = 'Turma'
      Size = 50
    end
    object Q_TurmaPeriodo: TWideStringField
      DisplayWidth = 18
      FieldName = 'Periodo'
      Size = 50
    end
    object Q_Turmapasta: TIntegerField
      FieldName = 'pasta'
    end
  end
  object DS_Turma: TDataSource
    DataSet = Q_Turma
    Left = 392
    Top = 56
  end
  object Q_Restricao: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from restricoes')
    Left = 528
    Top = 8
  end
  object DSResrriLab: TDataSource
    Left = 456
    Top = 56
  end
  object DSRestricao: TDataSource
    DataSet = Q_Restricao
    Left = 528
    Top = 56
  end
  object Q_Login: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * From Usuario')
    Left = 592
    Top = 8
  end
  object Q_ResLab: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ResLab')
    Left = 456
    Top = 8
    object Q_ResLabCodRes: TIntegerField
      FieldName = 'CodRes'
    end
    object Q_ResLablab: TIntegerField
      FieldName = 'lab'
    end
    object Q_ResLabLogin: TWideStringField
      FieldName = 'Login'
      Size = 50
    end
    object Q_ResLabStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object DtSrcLogin: TDataSource
    Left = 592
    Top = 56
  end
  object Q_SelcMicro: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ip'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select * from Micro '
      'where'
      'ip =:ip')
    Left = 648
    Top = 8
    object Q_SelcMicroNomeMicro: TWideStringField
      FieldName = 'NomeMicro'
      Size = 50
    end
    object Q_SelcMicroCodMicro: TAutoIncField
      FieldName = 'CodMicro'
      ReadOnly = True
    end
    object Q_SelcMicroIP: TWideStringField
      FieldName = 'IP'
      Size = 50
    end
    object Q_SelcMicroLab: TIntegerField
      FieldName = 'Lab'
    end
    object Q_SelcMicroStatus: TWideStringField
      FieldName = 'Status'
      Size = 50
    end
    object Q_SelcMicroUSUARIO: TWideStringField
      FieldName = 'USUARIO'
      Size = 50
    end
  end
  object DS_SelecMicro: TDataSource
    DataSet = Q_SelcMicro
    Left = 648
    Top = 56
  end
  object Q_Log: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from log')
    Left = 704
    Top = 8
    object Q_LogCodLog: TAutoIncField
      FieldName = 'CodLog'
      ReadOnly = True
    end
    object Q_LogUsuario: TWideStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object Q_Loglab: TIntegerField
      FieldName = 'lab'
    end
    object Q_LogMicro: TIntegerField
      FieldName = 'Micro'
    end
    object Q_LogData: TWideStringField
      FieldName = 'Data'
      Size = 50
    end
    object Q_LogHoraEntrada: TWideStringField
      FieldName = 'HoraEntrada'
      Size = 50
    end
    object Q_LogHoraSaida: TWideStringField
      FieldName = 'HoraSaida'
      Size = 50
    end
    object Q_LogFinalizado: TIntegerField
      FieldName = 'Finalizado'
    end
    object Q_LogIp: TWideStringField
      FieldName = 'Ip'
      Size = 50
    end
    object Q_LogNv: TIntegerField
      FieldName = 'Nv'
    end
  end
  object DS_Log: TDataSource
    DataSet = Q_Log
    Left = 704
    Top = 56
  end
  object T_Usuario: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'Usuario'
    Left = 8
    Top = 56
    object T_UsuarioLogin: TWideStringField
      FieldName = 'Login'
      Size = 50
    end
    object T_UsuarioSenha: TWideStringField
      FieldName = 'Senha'
      Size = 50
    end
    object T_UsuarioNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object T_UsuarioCod_Nivel: TIntegerField
      FieldName = 'Cod_Nivel'
    end
    object T_UsuarioCodTurma: TIntegerField
      FieldName = 'CodTurma'
    end
    object T_UsuarioRa: TWideStringField
      FieldName = 'Ra'
      Size = 50
    end
    object T_UsuarioIdade: TWideStringField
      FieldName = 'Idade'
      Size = 50
    end
  end
  object Q_SelectLog: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ip'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'fin'
        DataType = ftInteger
        Value = 0
      end>
    SQL.Strings = (
      'select * from log '
      'where'
      'ip =:ip'
      ' and'
      ''
      'Finalizado =:fin')
    Left = 768
    Top = 8
    object Q_SelectLogCodLog: TAutoIncField
      FieldName = 'CodLog'
      ReadOnly = True
    end
    object Q_SelectLogUsuario: TWideStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object Q_SelectLoglab: TIntegerField
      FieldName = 'lab'
    end
    object Q_SelectLogMicro: TIntegerField
      FieldName = 'Micro'
    end
    object Q_SelectLogData: TWideStringField
      FieldName = 'Data'
      Size = 50
    end
    object Q_SelectLogHoraEntrada: TWideStringField
      FieldName = 'HoraEntrada'
      Size = 50
    end
    object Q_SelectLogHoraSaida: TWideStringField
      FieldName = 'HoraSaida'
      Size = 50
    end
    object Q_SelectLogFinalizado: TIntegerField
      FieldName = 'Finalizado'
    end
    object Q_SelectLogIp: TWideStringField
      FieldName = 'Ip'
      Size = 50
    end
    object Q_SelectLogNv: TIntegerField
      FieldName = 'Nv'
    end
  end
  object DM_Selectlog: TDataSource
    DataSet = Q_SelectLog
    Left = 768
    Top = 56
  end
  object Q_UsuLog: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'login'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Usuario where Login =:login')
    Left = 840
    Top = 8
    object Q_UsuLogLogin: TWideStringField
      FieldName = 'Login'
      Size = 50
    end
    object Q_UsuLogSenha: TWideStringField
      FieldName = 'Senha'
      Size = 50
    end
    object Q_UsuLogNome: TWideStringField
      FieldName = 'Nome'
      Size = 50
    end
    object Q_UsuLogCod_Nivel: TIntegerField
      FieldName = 'Cod_Nivel'
    end
    object Q_UsuLogCodTurma: TIntegerField
      FieldName = 'CodTurma'
    end
    object Q_UsuLogRa: TWideStringField
      FieldName = 'Ra'
      Size = 50
    end
    object Q_UsuLogIdade: TWideStringField
      FieldName = 'Idade'
      Size = 50
    end
  end
  object DS_Usulog: TDataSource
    DataSet = Q_UsuLog
    Left = 856
    Top = 64
  end
  object DS_FilterRestr: TDataSource
    DataSet = Q_FilterRestr
    Left = 16
    Top = 152
  end
  object Q_FilterRestr: TADOQuery
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
      end
      item
        Name = 'la'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'login'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Reslab'
      'where'
      'codres =:cod and lab =:la and login =:login')
    Left = 16
    Top = 104
    object Q_FilterRestrCodRes: TIntegerField
      FieldName = 'CodRes'
    end
    object Q_FilterRestrlab: TIntegerField
      FieldName = 'lab'
    end
    object Q_FilterRestrLogin: TWideStringField
      FieldName = 'Login'
      Size = 50
    end
    object Q_FilterRestrStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object Q_SelectReslab: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'login'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'lab'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from reslab where login =:login and lab =:lab')
    Left = 88
    Top = 104
    object Q_SelectReslabCodRes: TIntegerField
      FieldName = 'CodRes'
    end
    object Q_SelectReslablab: TIntegerField
      FieldName = 'lab'
    end
    object Q_SelectReslabLogin: TWideStringField
      FieldName = 'Login'
      Size = 50
    end
    object Q_SelectReslabStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object DS_SelectResLab: TDataSource
    DataSet = Q_SelectReslab
    Left = 96
    Top = 152
  end
  object Q_VerifiLog: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'lab'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'fin'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '0'
      end
      item
        Name = 'nv'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '2'
      end>
    SQL.Strings = (
      'select * from log'
      'where'
      'lab=:lab and finalizado=:fin and nv=:nv')
    Left = 176
    Top = 104
    object Q_VerifiLogCodLog: TAutoIncField
      FieldName = 'CodLog'
      ReadOnly = True
    end
    object Q_VerifiLogUsuario: TWideStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object Q_VerifiLoglab: TIntegerField
      FieldName = 'lab'
    end
    object Q_VerifiLogMicro: TIntegerField
      FieldName = 'Micro'
    end
    object Q_VerifiLogData: TWideStringField
      FieldName = 'Data'
      Size = 50
    end
    object Q_VerifiLogHoraEntrada: TWideStringField
      FieldName = 'HoraEntrada'
      Size = 50
    end
    object Q_VerifiLogHoraSaida: TWideStringField
      FieldName = 'HoraSaida'
      Size = 50
    end
    object Q_VerifiLogFinalizado: TIntegerField
      FieldName = 'Finalizado'
    end
    object Q_VerifiLogIp: TWideStringField
      FieldName = 'Ip'
      Size = 50
    end
    object Q_VerifiLogNv: TIntegerField
      FieldName = 'Nv'
    end
  end
  object DS_verifiLog: TDataSource
    DataSet = Q_VerifiLog
    Left = 168
    Top = 152
  end
  object Q_Data: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from data')
    Left = 296
    Top = 104
    object Q_DataData: TDateTimeField
      FieldName = 'Data'
    end
    object Q_DataHora: TDateTimeField
      FieldName = 'Hora'
    end
  end
  object DS_turmaAluno: TDataSource
    DataSet = Q_TurmaAluno
    Left = 232
    Top = 160
  end
  object Q_MicroLog: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'lab'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'fin'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '0'
      end>
    SQL.Strings = (
      'select * from log'
      'where'
      'lab=:lab and finalizado=:fin')
    Left = 344
    Top = 104
    object Q_MicroLogCodLog: TAutoIncField
      FieldName = 'CodLog'
      ReadOnly = True
    end
    object Q_MicroLogUsuario: TWideStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object Q_MicroLoglab: TIntegerField
      FieldName = 'lab'
    end
    object Q_MicroLogMicro: TIntegerField
      FieldName = 'Micro'
    end
    object Q_MicroLogData: TWideStringField
      FieldName = 'Data'
      Size = 50
    end
    object Q_MicroLogHoraEntrada: TWideStringField
      FieldName = 'HoraEntrada'
      Size = 50
    end
    object Q_MicroLogHoraSaida: TWideStringField
      FieldName = 'HoraSaida'
      Size = 50
    end
    object Q_MicroLogFinalizado: TIntegerField
      FieldName = 'Finalizado'
    end
    object Q_MicroLogIp: TWideStringField
      FieldName = 'Ip'
      Size = 50
    end
    object Q_MicroLogNv: TIntegerField
      FieldName = 'Nv'
    end
  end
  object DS_MicroLog: TDataSource
    DataSet = Q_MicroLog
    Left = 296
    Top = 152
  end
  object Q_TurmaAluno: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nv'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '3'
      end
      item
        Name = 'turma'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from usuario where'
      'cod_nivel =:nv and'
      'codturma =:turma')
    Left = 240
    Top = 104
  end
  object DS_pastas: TDataSource
    DataSet = Q_pastas
    Left = 352
    Top = 152
  end
  object Q_pastas: TADOQuery
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
    Left = 392
    Top = 104
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
  object DS_consultaUsu: TDataSource
    DataSet = ConUsu
    Left = 392
    Top = 152
  end
  object ConUsu: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nv'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '3'
      end>
    SQL.Strings = (
      'select * from usuario where Cod_Nivel =:nv')
    Left = 440
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = Q_manutecao
    Left = 440
    Top = 152
  end
  object Q_manutecao: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Plab'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '0'
      end
      item
        Name = 'st'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = 'Ativo'
      end>
    SQL.Strings = (
      'Select * from micro '
      'where'
      'lab =:Plab and status =:st')
    Left = 488
    Top = 104
    object Q_manutecaoNomeMicro: TWideStringField
      FieldName = 'NomeMicro'
      Size = 50
    end
    object Q_manutecaoCodMicro: TAutoIncField
      FieldName = 'CodMicro'
      ReadOnly = True
    end
    object Q_manutecaoIP: TWideStringField
      FieldName = 'IP'
      Size = 50
    end
    object Q_manutecaoLab: TIntegerField
      FieldName = 'Lab'
    end
    object Q_manutecaoUSUARIO: TWideStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object Q_manutecaoStatus: TWideStringField
      FieldName = 'Status'
      Size = 50
    end
  end
  object Q_Consultas: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 536
    Top = 104
  end
  object DM_consultas: TDataSource
    DataSet = Q_Consultas
    Left = 488
    Top = 152
  end
  object Q_servidor: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from servidor')
    Left = 592
    Top = 104
    object Q_servidorip: TWideStringField
      FieldName = 'ip'
      Size = 50
    end
  end
  object DS_SERVIDR: TDataSource
    DataSet = Q_servidor
    Left = 536
    Top = 152
  end
end
