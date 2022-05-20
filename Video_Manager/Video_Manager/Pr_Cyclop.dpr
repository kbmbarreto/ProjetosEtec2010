program Pr_Cyclop;

uses
  Forms,
  U_Menu in 'U_Menu.pas' {FrmMenu},
  U_Login in 'U_Login.pas' {FrmLogin},
  U_Sobre in 'U_Sobre.pas' {FrmSobre},
  U_AltSenha in 'U_AltSenha.pas' {FrmAltSenha},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_CadUsua in 'U_CadUsua.pas' {FrmCadUsua},
  U_CadFil in 'U_CadFil.pas' {FrmCadFil},
  U_CadCli in 'U_CadCli.pas' {FrmCadCli},
  U_CadCat in 'U_CadCat.pas' {FrmCadCat},
  U_VisCli in 'U_VisCli.pas' {FrmVisCli},
  U_ConCli in 'U_ConCli.pas' {FrmConCli},
  U_ConFil in 'U_ConFil.pas' {FrmConFil},
  U_Locacao in 'U_Locacao.pas' {FrmLocacao},
  U_Pesquisar in 'U_Pesquisar.pas' {FrmPesquisar},
  U_Devolucao in 'U_Devolucao.pas' {FrmDevolucao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
