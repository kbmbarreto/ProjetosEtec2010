program P_servidor;

uses
  Forms,
  U_servidor in 'U_servidor.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
