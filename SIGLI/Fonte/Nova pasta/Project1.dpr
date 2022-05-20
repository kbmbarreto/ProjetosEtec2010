program Project1;

uses
  Forms,
  U_pausa in 'U_pausa.pas' {FRMPAUSA};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFRMPAUSA, FRMPAUSA);
  Application.Run;
end.
