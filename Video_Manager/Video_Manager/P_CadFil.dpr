program P_CadFil;

uses
  Forms,
  U_CadFil in 'U_CadFil.pas' {FrmCadFil},
  U_DM in 'U_DM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmCadFil, FrmCadFil);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
