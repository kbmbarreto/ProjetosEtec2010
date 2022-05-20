program ScrShareSrv;

uses
  Forms,
  Main in 'Main.pas' {FrmClienteVnc},
  NMMReceiverList in '..\..\Source\NMMReceiverList.pas',
  ThreadInfo in 'ThreadInfo.pas' {FrmInfor},
  NMMRCQueue in '..\..\..\Source\NMMRCQueue.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmClienteVnc, FrmClienteVnc);
  Application.CreateForm(TFrmInfor, FrmInfor);
  Application.Run;
end.
