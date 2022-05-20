program P_CadCat;

uses
  Forms,
  U_CadCat in 'U_CadCat.pas' {FrmCadCat},
  U_DM2 in 'U_DM2.pas' {DM2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmCadCat, FrmCadCat);
  Application.CreateForm(TDM2, DM2);
  Application.Run;
end.
