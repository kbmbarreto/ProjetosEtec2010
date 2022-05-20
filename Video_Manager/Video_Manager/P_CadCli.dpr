program P_CadCli;

uses
  Forms,
  U_CadCli in 'U_CadCli.pas' {FrmCadCli},
  U_dm in 'U_dm.pas' {DM3: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmCadCli, FrmCadCli);
  Application.CreateForm(TDM3, DM3);
  Application.Run;
end.
