program P_Sigli;

uses
  Forms,
  U_inicio in 'U_inicio.pas' {FrmInicio},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_CadLab in 'U_CadLab.pas' {FrmCadLab},
  U_CadUsu in 'U_CadUsu.pas' {FrmCadUsu},
  U_AltLab in 'U_AltLab.pas' {FrmAltLab},
  U_AltUsu in 'U_AltUsu.pas' {FrmAltUsu},
  U_CadTurma in 'U_CadTurma.pas' {FrmCadTurma},
  U_Login in 'U_Login.pas' {FrmLogin},
  U_Restricao in 'U_Restricao.pas' {FrmRestricao},
  U_pausa in 'U_pausa.pas' {frmPausa},
  U_relaLabXMicro in 'U_relaLabXMicro.pas' {FrmRelLab},
  U_criardiretorio in 'U_criardiretorio.pas' {FrmCriaDire},
  U_aluno in 'U_aluno.pas' {frmAluno},
  ClienteVNC in 'Server\ClienteVNC.pas' {FrmClienteVnc},
  ThreadInfo in 'Server\ThreadInfo.pas' {FrmInfor},
  U_Manutencao in 'U_Manutencao.pas' {FrmManutencao},
  ConDlg in 'Cópia de Client\ConDlg.pas' {frmConDlg},
  Main in 'Cópia de Client\Main.pas' {frmMain},
  Options in 'Cópia de Client\Options.pas' {frmOptions},
  Stat in 'Cópia de Client\Stat.pas' {frmStat},
  About in 'Cópia de Client\About.pas' {AboutBox},
  U_carregar in 'U_carregar.pas' {frmCarregando},
  U_consulta in 'U_consulta.pas' {FrmBusca},
  U_relUsuario in 'U_relUsuario.pas' {FRmrelaluno};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmManutencao, FrmManutencao);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmOptions, frmOptions);
  Application.CreateForm(TfrmConDlg, frmConDlg);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TfrmStat, frmStat);
  Application.CreateForm(TFRmrelaluno, FRmrelaluno);
  Application.Run;
end.
