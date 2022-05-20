unit ThreadInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmInfor = class(TForm)
    lblClientGroupThreads: TLabel;
    lblWriteStreamThread: TLabel;
    ThreadInfoTimer: TTimer;
    lblClientHandles: TLabel;
    procedure ThreadInfoTimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInfor: TFrmInfor;

implementation

uses Main, NMMServerGlobals, ClienteVNC;

{$R *.dfm}

procedure TFrmInfor.ThreadInfoTimerTimer(Sender: TObject);
begin
  lblClientGroupThreads.Caption:=
    'ClientGroupThreads= ' +
    IntToStr(frmclientevnc.Server.ThreadInfo.ConnectionGroupThreads);

  lblWriteStreamThread.Caption:=
    'WriteStreamThread= ' +
    IntToStr(frmclientevnc.Server.ThreadInfo.WriteStreamThreads);

  lblClientHandles.Caption:= 'ClientHandles= ' + IntToStr(GchInstances.Value);
end;

end.
