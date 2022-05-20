unit U_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls,WinSock, Grids, DBGrids,DB,
  WinSkinData,Registry, ScktComp;
  const
   InputBoxMessage = WM_USER + 200;

type
  TFrmLogin = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    EdtSenha: TEdit;
    EdtNome: TEdit;
    CheckBox1: TCheckBox;
    BtbtnEntrar: TBitBtn;
    Timer1: TTimer;
    SkinData1: TSkinData;
    d: TImage;
    c: TImage;
    b: TImage;
    a: TImage;
    Image6: TImage;
    e: TImage;
    Image1: TImage;
    Panel1: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure BtbtnEntrarClick(Sender: TObject);
    procedure log();
    procedure EdtNomeExit(Sender: TObject);
    procedure EdtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure desabilitarwinkey(ativa:Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure aMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure eMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure eClick(Sender: TObject);
    procedure dClick(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure aClick(Sender: TObject);

  private
    { Private declarations }
    FPodeFechar: boolean;

        procedure InputBoxSetPasswordChar(var Msg: TMessage); message InputBoxMessage;
  public
    { Public declarations }


  end;

var
InputString,use: string;
  FrmLogin: TFrmLogin;
   usuario: string;
 ip :string;
 lab :integer;
 nv:integer;
 id1: integer;
 pasta:integer;
const
MOD_ALT = 1;
  POLICE = 'Software\Microsoft\Windows\CurrentVersion\Policies\';

implementation

uses U_DM, U_inicio, U_AltLab, U_aluno, U_carregar, ClienteVNC, U_CadLab;

{$R *.dfm}

procedure TFrmLogin.FormActivate(Sender: TObject);
 var
 wsaData: TWSAData;

begin


ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_HIDE);
WSAStartup( 257, wsaData );
ip:=Trim(iNet_ntoa( PInAddr( GetHostByName( nil )^.h_addr_list^ )^ ));
 dm.Q_SelcMicro.Parameters.ParamByName('ip').Value:=ip;
 dm.Q_SelcMicro.Open;
   if dm.Q_SelcMicro.IsEmpty then
   begin
   Application.MessageBox('Micro não cadastrado contate o administrador','Atenção',MB_OK);
   BtbtnEntrar.Enabled:=false;
   end
    else
    begin
 lab:=dm.Q_SelcMicroLab.Value;



id1 := GlobalAddAtom('Hotkey1');
RegisterHotKey(Handle, id1, MOD_ALT, VK_TAB);
EdtSenha.Clear;
EdtNome.Clear;
EdtSenha.Visible:=false;
EdtNome.SetFocus;
dm.T_Usuario.Open;



 end;
end;

procedure TFrmLogin.BtbtnEntrarClick(Sender: TObject);
begin
if CheckBox1.Checked then
pasta:=1
else
pasta:=0;
if not ((dm.T_Usuario.Locate('login',EdtNome.Text,[]))and (dm.T_Usuario.Locate('senha',EdtSenha.Text,[]))) then
begin
Application.MessageBox('Senha incorreta','Erro',MB_ICONERROR);
EdtSenha.Clear;
EdtNome.Clear;
EdtSenha.Visible:=false;
EdtNome.Visible:=true;
EdtNome.SetFocus;
Label1.Caption:='Usuario';
Label2.Caption:='';
end
else
begin

dm.Q_VerifiLog.Close;
dm.Q_UsuLog.Close;
dm.Q_UsuLog.Parameters.ParamByName('login').Value:=EdtNome.Text;
DM.Q_UsuLog.Open;
usuario:=DM.Q_UsuLogLogin.Value;
nv:=dm.Q_UsuLogCod_Nivel.Value;
EdtSenha.Clear;
EdtNome.Clear;
EdtSenha.Visible:=false;
EdtNome.Visible:=true;
EdtNome.SetFocus;
Label1.Caption:='Usuario';
Label2.Caption:='';
 if nv=2 then
 begin
dm.Q_VerifiLog.Close;
dm.Q_VerifiLog.Parameters.ParamByName('lab').Value:=lab;
dm.Q_VerifiLog.Parameters.ParamByName('nv').Value:=2;
dm.Q_VerifiLog.Open;
if(dm.Q_VerifiLog.IsEmpty)   then
begin
log ;
 if (FrmInicio=nil) then
begin
FrmInicio:=TFrmInicio.Create(Self);
FrmInicio.Show;

end
else
 FrmInicio.Show;
end
else
begin
ShowMessage('ja existe umprofessor logado aki');
dm.Q_VerifiLog.Close;
end;
end;
if nv = 1 then
begin

 if (FrmInicio=nil) then
begin
FrmInicio:=TFrmInicio.Create(Self);
FrmInicio.Show;

end
else
 FrmInicio.Show;

end;


if nv=3 then
if frmAluno=nil then
begin
frmAluno:=TfrmAluno.Create(Self);
frmAluno.Show;
end
else
frmAluno.Show;

end;
end;
procedure TFrmLogin.log;
begin

dm.Q_Log.Open;
dm.Q_Log.Insert;
dm.Q_LogUsuario.Value:=usuario;
dm.Q_Loglab.Value:=dm.Q_SelcMicroLab.Value;
dm.Q_LogMicro.Value:=dm.Q_SelcMicroCodMicro.Value;
dm.Q_LogData.Value:=datetostr(date());
dm.Q_LogHoraEntrada.Value:=timetostr(time());
dm.Q_LogFinalizado.Value:=0;
dm.Q_LogIp.Value:=dm.Q_SelcMicroIP.Value;
dm.Q_LogNv.Value:=nv;
dm.Q_Log.Post;
dm.Q_Log.Close;


end;

procedure TFrmLogin.EdtNomeExit(Sender: TObject);
begin
EdtSenha.Visible:=true;
EdtNome.Visible:=false;
EdtSenha.SetFocus;
Label2.Caption:=EdtNome.Text;
Label1.Caption:='Senha';


end;

procedure TFrmLogin.EdtNomeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
EdtSenha.Visible:=true;
EdtSenha.SetFocus;
end;

end;

procedure TFrmLogin.EdtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
BtbtnEntrar.Click;
end;

procedure TFrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
CanClose := FPodeFechar; 
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
var
   reg: TRegistry;

begin



if  frmCarregando=nil then
begin
frmCarregando:=TfrmCarregando.Create(Self);
frmCarregando.ShowModal;
end
else
frmCarregando.ShowModal;



FPodeFechar :=false;



end;

procedure TFrmLogin.desabilitarwinkey(Ativa: Boolean);
var
  reg: TRegistry;
  HexBuf: array[0..23] of Byte;
  i: Integer;
begin
  reg := TRegistry.Create;
  try
    for i:=0 to 23 do
      HexBuf[i] := $00;
    HexBuf[8] := $03;
    HexBuf[14] := $5B;
    HexBuf[15] := $E0;
    HexBuf[18] := $5C;
    HexBuf[19] := $E0;

    reg.RootKey := HKEY_LOCAL_MACHINE;
    reg.OpenKey('SYSTEM\CurrentControlSet\Control\Keyboard Layout', True);
    if Ativa then
      reg.WriteBinaryData('Scancode Map', HexBuf, 24)
    else
      reg.DeleteValue('Scancode Map');
    reg.CloseKey;
  finally
    FreeAndNil(reg);
  end;
end;

procedure TFrmLogin.Timer1Timer(Sender: TObject);
begin
ShowWindow(FindWindow('progman',nil),0);
ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_HIDE);
end;

procedure TFrmLogin.FormHide(Sender: TObject);
begin
Timer1.Enabled:=false;
key:= TRegistry.Create;
key.RootKey := HKEY_CURRENT_USER;
key.OpenKey(SISTEMA,TRUE);
key.WriteInteger('DisableTaskMgr',0);
key.CloseKey;
	key.LazyWrite:=false;
	WinExec('kill.bat',HIDE_WINDOW);
 ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_SHOWNORMAL);
 UnRegisterHotKey(Handle, id1);


end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_SHOWNORMAL);
 UnRegisterHotKey(Handle, id1);
end;

procedure TFrmLogin.FormDestroy(Sender: TObject);
begin
 ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_SHOWNORMAL);
 UnRegisterHotKey(Handle, id1);

end;

procedure TFrmLogin.Label3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrmLogin.Image6Click(Sender: TObject);
begin
 a.Visible:=true;
b.Visible:=true;
c.Visible:=true;
d.Visible:=true;
e.Visible:=true;
a.Width:=153;
a.Height:=113;
b.Width:=153;
b.Height:=113;
c.Width:=153;
c.Height:=113;
d.Width:=153;
d.Height:=113;
e.Width:=153;
e.Height:=113;

end;

procedure TFrmLogin.aMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
a.Width:=169;
a.Height:=129;
end;

procedure TFrmLogin.bMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
b.Width:=169;
b.Height:=129;
end;

procedure TFrmLogin.cMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
c.Width:=169;
c.Height:=129;
end;

procedure TFrmLogin.dMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
d.Width:=169;
d.Height:=129;
end;

procedure TFrmLogin.eMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
e.Width:=169;
e.Height:=129;
end;

procedure TFrmLogin.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
a.Width:=153;
a.Height:=113;
b.Width:=153;
b.Height:=113;
c.Width:=153;
c.Height:=113;
d.Width:=153;
d.Height:=113;
e.Width:=153;
e.Height:=113;
Image6.Visible:=true;
Image1.Visible:=false;
end;

procedure TFrmLogin.eClick(Sender: TObject);
begin
 a.Visible:=false;
b.Visible:=false;
c.Visible:=false;
d.Visible:=false;
e.Visible:=false;
Image1.Visible:=false;
Image6.Visible:=true;
end;

procedure TFrmLogin.dClick(Sender: TObject);
begin
  InputString:=' ';
use:=' ';
   use:=InputBox('Autenticação','Digite o Usuario','');
  PostMessage(Handle, InputBoxMessage, 0, 0);
  InputString := InputBox('Autenticação', 'Digite sua senha', '');
  dm.Q_Consultas.close;
  dm.Q_Consultas.SQL.Clear;
  dm.Q_Consultas.SQL.Add('select * from usuario where cod_nivel =1 and  login like'+QuotedStr(use+'%')+'and senha like'+QuotedStr(InputString+'%'));
dm.Q_Consultas.Open;
 if dm.Q_Consultas.IsEmpty then
 showMessage('Acesso negado')
 else

Application.Terminate;

end;
procedure TFrmLogin.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Image6.Visible:=false;
Image1.Visible:=true;
end;

procedure TFrmLogin.Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Image6.Visible:=false;
Image1.Visible:=true;
end;

procedure TFrmLogin.aClick(Sender: TObject);
var
  InputString,usuario: string;
begin
InputString:=' ';
use:=' ';
   use:=InputBox('Autenticação','Digite o Usuario','');
  PostMessage(Handle, InputBoxMessage, 0, 0);
  InputString := InputBox('Autenticação', 'Digite sua senha', '');
  dm.Q_Consultas.close;
  dm.Q_Consultas.SQL.Clear;
  dm.Q_Consultas.SQL.Add('select * from usuario where cod_nivel =1 and  login like'+QuotedStr(use+'%')+'and senha like'+QuotedStr(InputString+'%'));
dm.Q_Consultas.Open;
 if dm.Q_Consultas.IsEmpty then
 showMessage('Acesso negado')
 else
 begin
Frmlogin.Hide;
if (FrmCadLab=nil) then
begin
FrmCadLab:=TFrmCadLab.Create(Self);
FrmCadLab.Show;
end
else
FrmCadLab.Show;
FrmCadLab.BorderStyle:=bsNone;
FrmCadLab.Voltar.Visible:=true;



  end;
end;

procedure TFrmLogin.InputBoxSetPasswordChar(var Msg: TMessage);
var
  hInputForm, hEdit, hButton: HWND;
begin
  hInputForm := Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  begin
    hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'), 0);
  end;

end;

end.
