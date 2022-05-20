unit U_aluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ScktComp,Registry,Winsock, ExtCtrls, jpeg;

type
  TfrmAluno = class(TForm)
    ServerSocket1: TServerSocket;
    blocknet: TTimer;
    Timer1: TTimer;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure blocknetTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAluno: TfrmAluno;

implementation

uses U_Login, U_inicio, U_DM, ClienteVNC, U_pausa, Math;

{$R *.dfm}

procedure TfrmAluno.BitBtn1Click(Sender: TObject);
begin
Close;

end;

procedure TfrmAluno.FormCreate(Sender: TObject);
 var

  PServer, PSenha, PLetra : PChar;
  dir:string;
begin

dm.Q_SelcMicro.Close;
dm.Q_SelcMicro.Parameters.ParamByName('ip').Value:=ip;
dm.Q_SelcMicro.Open;

dm.Q_SelcMicro.Edit;
dm.Q_SelcMicroUSUARIO.Value:=usuario;
dm.Q_SelcMicroStatus.Value:='Ativo';
dm.Q_SelcMicro.Post;

dm.Q_SelcMicro.Close;
 ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_SHOWNORMAL);
 UnRegisterHotKey(Handle, id1);
if pasta=1 then
   begin
   dm.Q_servidor.Open;
   dir:='\\'+dm.Q_servidorip.Value+'\'+usuario ;
   dm.Q_servidor.Close;
  PServer :=pchar(dir);
  PLetra := 'H:';
  PSenha := '';

 WNetAddConnection(PServer , PSenha , PLetra);
 end;
  dm.Q_FilterRestr.Close;
  key := TRegistry.Create;
	key.RootKey := HKEY_CURRENT_USER;
	key.OpenKey(EXPLORER,TRUE);
	dm.Q_VerifiLog.close;
	dm.Q_VerifiLog.Parameters.ParamByName('lab').Value:=lab;
	DM.Q_VerifiLog.Open;

	dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=1;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoFolderOptions',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

  	dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=2;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoFileMenu',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

    	dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=3;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoInternetOpenWith',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

      	dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=4;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoViewOnDrive',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=5;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoDrives',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

    dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=6;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoCDBurning',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

      dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=7;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoWinKeys',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

        dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=8;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NOPROPERTIESMYDOCUMENTS',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

          dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=9;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NOPROPERTIESMYCOMPUTER',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

            dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=10;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('ClearRecentDocsOnExit',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

              dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=11;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoTrayContextMenu',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

                dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=12;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoStartMenuSubFolders',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

                  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=13;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoSMMyDocs',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

                    dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=14;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoSMMyPictures',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

                      dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=15;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoStartMenuMyMusic',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

                        dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=16;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoStartMenuNetworkPlaces',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

                          dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=17;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoNetworkConnections',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

                            dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=18;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoSetFolders',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;


     dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=19;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoFind',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

       dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=20;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoRun',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

        	dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=21;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoStartMenuMorePrograms',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

          	dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=22;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoClose',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

            	dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=23;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('StartMenuLogOff',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

              	dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=24;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NODESKTOP',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;

                	dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
	dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=DM.Q_VerifiLogUsuario.Value;
	dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=25;
	dm.Q_FilterRestr.Open;
	key.WriteInteger('NoControlPanel',dm.Q_FilterRestrStatus.AsInteger);
	dm.Q_FilterRestr.Close;



  	key.CloseKey;
	key.LazyWrite:=false;
   WinExec('Kill.bat',HIDE_WINDOW);











end;


procedure TfrmAluno.FormActivate(Sender: TObject);
begin
FrmLogin.Hide;
key:= TRegistry.Create;
key.RootKey := HKEY_CURRENT_USER;
key.OpenKey(SISTEMA,TRUE);
key.WriteInteger('DisableTaskMgr',1);
key.CloseKey;
	key.LazyWrite:=false;
	WinExec('kill.bat',HIDE_WINDOW);
dm.Q_SelcMicro.Close;
dm.Q_SelcMicro.Parameters.ParamByName('ip').Value:=ip;
dm.Q_SelcMicro.Open;

dm.Q_SelcMicro.Edit;
dm.Q_SelcMicroUSUARIO.Value:=usuario;
dm.Q_SelcMicroStatus.Value:='Ativo';
dm.Q_SelcMicro.Post;


Label1.Caption:=usuario;



end;

procedure TfrmAluno.FormClose(Sender: TObject; var Action: TCloseAction);
 var
 wsaData: TWSAData;
  letra:pchar;
 Forcada:Boolean;
begin
FrmClienteVnc.Close;
key := TRegistry.Create;
	key.RootKey := HKEY_CURRENT_USER;
	key.OpenKey(EXPLORER,TRUE);
key.WriteInteger('NoFolderOptions',0);
key.WriteInteger('NoFileMenu',0);
key.WriteInteger('NoInternetOpenWith',0);
key.WriteInteger('NoViewOnDrive',0);
key.WriteInteger('NoDrives',0);
key.WriteInteger('NoCDBurning',0);
key.WriteInteger('NoWinKeys',0);
key.WriteInteger('NOPROPERTIESMYDOCUMENTS',0);
key.WriteInteger('NOPROPERTIESMYCOMPUTER',0);
key.WriteInteger('ClearRecentDocsOnExit',0);
key.WriteInteger('NoTrayContextMenu',0);
key.WriteInteger('NoStartMenuSubFolders',0);
key.WriteInteger('NoSMMyDocs',0);
key.WriteInteger('NoSMMyPictures',0);
key.WriteInteger('NoStartMenuMyMusic',0);
key.WriteInteger('NoStartMenuNetworkPlaces',0);
key.WriteInteger('NoNetworkConnections',0);
key.WriteInteger('NoSetFolders',0);
key.WriteInteger('NoFind',0);
key.WriteInteger('NoRun',0);
key.WriteInteger('NoStartMenuMorePrograms',0);
key.WriteInteger('NoClose',0);
key.WriteInteger('StartMenuLogOff',0);
key.WriteInteger('NODESKTOP',0);
key.WriteInteger('NoControlPanel',0);
  	key.CloseKey;
	key.LazyWrite:=false;

Letra :='S';

Forcada :=false;
WNetCancelConnection('H:',true);



WSAStartup( 257, wsaData );
 dm.Q_SelectLog.Parameters.ParamByName('ip').Value:=Trim(iNet_ntoa( PInAddr( GetHostByName( nil )^.h_addr_list^ )^ ));
 dm.Q_SelectLog.Open;
  dm.Q_SelectLog.Edit;
 dm.Q_SelectLogHoraSaida.Value:=timetostr(time());
 dm.Q_SelectLogFinalizado.Value:=1;
 dm.Q_SelectLog.Post;
 dm.Q_SelectLog.Close;
 dm.Q_SelcMicro.Open;
 dm.Q_SelcMicro.Edit;
 dm.Q_SelcMicroUSUARIO.Value:='';
 dm.Q_SelcMicroStatus.Value:='livre';
 dm.Q_SelcMicro.Post;
 dm.Q_SelcMicro.Close;

    WinExec('Kill.bat',HIDE_WINDOW);
 FrmLogin.Show;
 frmAluno.Release;
 frmAluno:=nil;

 dm.Q_SelcMicro.Close;
dm.Q_SelcMicro.Parameters.ParamByName('ip').Value:=ip;
dm.Q_SelcMicro.Open;

dm.Q_SelcMicro.Edit;
dm.Q_SelcMicroUSUARIO.Value:='';
dm.Q_SelcMicroStatus.Value:='livre';
dm.Q_SelcMicro.Post;

end;

procedure TfrmAluno.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
 var
  resp:integer;
  begin
resp:=Application.MessageBox('Deseja Realmete Sair ?','Saindo',36);
if resp = Idyes then
begin
canClose:=true;

end
else
Canclose:=false;
end;


procedure TfrmAluno.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var resp:String;


begin
resp:=Socket.ReceiveText;
if resp='desliga' then
begin
ExitWindowsEx(EWX_POWEROFF,0);

end;

if resp='reinicia' then
begin
ExitWindowsEx(EWX_POWEROFF,0);
end;

if resp='logoof' then
begin
ExitWindowsEx(EWX_FORCE,0);
end;


if resp='monitor' then
begin
SendMessage(Handle,WM_SYSCOMMAND, SC_MONITORPOWER, 1);
end;


if resp='btbloqueio' then
begin
frmAluno.Hide;
FrmLogin.Show;
FrmLogin.Panel1.Visible:=true;
end;

if resp='desbloc' then
begin
frmAluno.show;
FrmLogin.hide;
FrmLogin.Panel1.Visible:=false;


end;
if resp='intebloc' then
begin
blocknet.Enabled:=true;
end;
if resp='intevolta' then
begin
blocknet.Enabled:=false;
end;





end;



procedure TfrmAluno.blocknetTimer(Sender: TObject);
begin
WinExec('Killnet.bat',HIDE_WINDOW);
end;

procedure TfrmAluno.Timer1Timer(Sender: TObject);
begin
Label2.Caption:=datetostr(date());
Label3.Caption:=timetostr(time());
end;

procedure TfrmAluno.SpeedButton2Click(Sender: TObject);
begin
frmAluno.Width:=453;
frmAluno.Height:=33;
end;

procedure TfrmAluno.SpeedButton1Click(Sender: TObject);
begin
frmAluno.Width:=453;
frmAluno.Height:=68;
end;

end.
