unit U_DM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection: TADOConnection;
    Q_Laboratorio: TADOQuery;
    Q_Micro: TADOQuery;
    DS_laboratorio: TDataSource;
    DS_Micro: TDataSource;
    Q_LaboratorioCodLAb: TAutoIncField;
    Q_LaboratorioNomeLAb: TWideStringField;
    Q_MicroNomeMicro: TWideStringField;
    Q_MicroIP: TWideStringField;
    Q_MicroLab: TIntegerField;
    Q_MicroStatus: TWideStringField;
    Q_MicroCodMicro: TAutoIncField;
    Q_FilterMicro: TADOQuery;
    DS_FilterMicro: TDataSource;
    Q_FilterMicroNomeMicro: TWideStringField;
    Q_FilterMicroCodMicro: TAutoIncField;
    Q_FilterMicroIP: TWideStringField;
    Q_FilterMicroLab: TIntegerField;
    Q_FilterMicroStatus: TWideStringField;
    Q_Usuario: TADOQuery;
    Q_UsuarioLogin: TWideStringField;
    Q_UsuarioSenha: TWideStringField;
    Q_UsuarioNome: TWideStringField;
    Q_UsuarioCodTurma: TIntegerField;
    Q_UsuarioRa: TWideStringField;
    Q_UsuarioIdade: TWideStringField;
    DS_Usuario: TDataSource;
    Q_Nivel: TADOQuery;
    DS_nivel: TDataSource;
    Q_UsuarioCod_Nivel: TIntegerField;
    Q_UsuarioNivel: TStringField;
    Q_Turma: TADOQuery;
    DS_Turma: TDataSource;
    Q_TurmaCODTurma: TAutoIncField;
    Q_TurmaTurma: TWideStringField;
    Q_TurmaPeriodo: TWideStringField;
    Q_Restricao: TADOQuery;
    DSResrriLab: TDataSource;
    DSRestricao: TDataSource;
    Q_Login: TADOQuery;
    Q_ResLab: TADOQuery;
    DtSrcLogin: TDataSource;
    Q_SelcMicro: TADOQuery;
    DS_SelecMicro: TDataSource;
    Q_Log: TADOQuery;
    DS_Log: TDataSource;
    T_Usuario: TADOTable;
    Q_SelcMicroNomeMicro: TWideStringField;
    Q_SelcMicroCodMicro: TAutoIncField;
    Q_SelcMicroIP: TWideStringField;
    Q_SelcMicroLab: TIntegerField;
    Q_SelcMicroStatus: TWideStringField;
    Q_LogCodLog: TAutoIncField;
    Q_LogUsuario: TWideStringField;
    Q_Loglab: TIntegerField;
    Q_LogMicro: TIntegerField;
    Q_LogData: TWideStringField;
    Q_LogHoraEntrada: TWideStringField;
    Q_LogHoraSaida: TWideStringField;
    Q_LogFinalizado: TIntegerField;
    Q_LogIp: TWideStringField;
    Q_SelectLog: TADOQuery;
    DM_Selectlog: TDataSource;
    Q_SelectLogCodLog: TAutoIncField;
    Q_SelectLogUsuario: TWideStringField;
    Q_SelectLoglab: TIntegerField;
    Q_SelectLogMicro: TIntegerField;
    Q_SelectLogData: TWideStringField;
    Q_SelectLogHoraEntrada: TWideStringField;
    Q_SelectLogHoraSaida: TWideStringField;
    Q_SelectLogFinalizado: TIntegerField;
    Q_SelectLogIp: TWideStringField;
    Q_UsuLog: TADOQuery;
    DS_Usulog: TDataSource;
    Q_UsuLogLogin: TWideStringField;
    Q_UsuLogSenha: TWideStringField;
    Q_UsuLogNome: TWideStringField;
    Q_UsuLogCod_Nivel: TIntegerField;
    Q_UsuLogCodTurma: TIntegerField;
    Q_UsuLogRa: TWideStringField;
    Q_UsuLogIdade: TWideStringField;
    DS_FilterRestr: TDataSource;
    Q_FilterRestr: TADOQuery;
    Q_FilterRestrCodRes: TIntegerField;
    Q_FilterRestrlab: TIntegerField;
    Q_FilterRestrLogin: TWideStringField;
    Q_FilterRestrStatus: TIntegerField;
    Q_SelectReslab: TADOQuery;
    DS_SelectResLab: TDataSource;
    Q_ResLabCodRes: TIntegerField;
    Q_ResLablab: TIntegerField;
    Q_ResLabLogin: TWideStringField;
    Q_ResLabStatus: TIntegerField;
    Q_SelectReslabCodRes: TIntegerField;
    Q_SelectReslablab: TIntegerField;
    Q_SelectReslabLogin: TWideStringField;
    Q_SelectReslabStatus: TIntegerField;
    Q_VerifiLog: TADOQuery;
    DS_verifiLog: TDataSource;
    Q_LogNv: TIntegerField;
    T_UsuarioLogin: TWideStringField;
    T_UsuarioSenha: TWideStringField;
    T_UsuarioNome: TWideStringField;
    T_UsuarioCod_Nivel: TIntegerField;
    T_UsuarioCodTurma: TIntegerField;
    T_UsuarioRa: TWideStringField;
    T_UsuarioIdade: TWideStringField;
    Q_VerifiLogCodLog: TAutoIncField;
    Q_VerifiLogUsuario: TWideStringField;
    Q_VerifiLoglab: TIntegerField;
    Q_VerifiLogMicro: TIntegerField;
    Q_VerifiLogData: TWideStringField;
    Q_VerifiLogHoraEntrada: TWideStringField;
    Q_VerifiLogHoraSaida: TWideStringField;
    Q_VerifiLogFinalizado: TIntegerField;
    Q_VerifiLogIp: TWideStringField;
    Q_VerifiLogNv: TIntegerField;
    Q_SelectLogNv: TIntegerField;
    Q_MicroUSUARIO: TWideStringField;
    Q_FilterMicroUSUARIO: TWideStringField;
    Q_SelcMicroUSUARIO: TWideStringField;
    Q_Data: TADOQuery;
    Q_DataData: TDateTimeField;
    Q_DataHora: TDateTimeField;
    DS_turmaAluno: TDataSource;
    Q_MicroLog: TADOQuery;
    DS_MicroLog: TDataSource;
    Q_MicroLogCodLog: TAutoIncField;
    Q_MicroLogUsuario: TWideStringField;
    Q_MicroLoglab: TIntegerField;
    Q_MicroLogMicro: TIntegerField;
    Q_MicroLogData: TWideStringField;
    Q_MicroLogHoraEntrada: TWideStringField;
    Q_MicroLogHoraSaida: TWideStringField;
    Q_MicroLogFinalizado: TIntegerField;
    Q_MicroLogIp: TWideStringField;
    Q_MicroLogNv: TIntegerField;
    Q_TurmaAluno: TADOQuery;
    DS_pastas: TDataSource;
    Q_pastas: TADOQuery;
    Q_pastasTurma: TIntegerField;
    Q_pastasst: TIntegerField;
    Q_pastasCod_pasta: TAutoIncField;
    Q_UsuarioTurma: TStringField;
    DS_consultaUsu: TDataSource;
    ConUsu: TADOQuery;
    Q_Turmapasta: TIntegerField;
    DataSource1: TDataSource;
    Q_manutecao: TADOQuery;
    Q_manutecaoNomeMicro: TWideStringField;
    Q_manutecaoCodMicro: TAutoIncField;
    Q_manutecaoIP: TWideStringField;
    Q_manutecaoLab: TIntegerField;
    Q_manutecaoUSUARIO: TWideStringField;
    Q_manutecaoStatus: TWideStringField;
    Q_Consultas: TADOQuery;
    DM_consultas: TDataSource;
    Q_servidor: TADOQuery;
    DS_SERVIDR: TDataSource;
    Q_servidorip: TWideStringField;
    procedure DS_MicroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DS_MicroDataChange(Sender: TObject; Field: TField);
begin
dm.Q_FilterMicro.close;

dm.Q_FilterMicro.Parameters.ParamByName('Plab').Value:=dm.Q_LaboratorioCodLAb.Value;
dm.Q_FilterMicro.open;


end;

end.
