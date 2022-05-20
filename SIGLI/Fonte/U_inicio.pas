unit U_inicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ComCtrls,WinSock, Grids, DBGrids,Registry,
  ExtCtrls, ScktComp, AppEvnts, ToolWin, ImgList, CoolTrayIcon;

type
  TFrmInicio = class(TForm)
    MnMnInicio: TMainMenu;
    Laboratorio1: TMenuItem;
    CadastrarLaboratorio1: TMenuItem;
    EditarLaboratorio1: TMenuItem;
    Usuario1: TMenuItem;
    CadastrarUsuario1: TMenuItem;
    AlterarUsuario1: TMenuItem;
    Aluno1: TMenuItem;
    CriarTurma1: TMenuItem;
    CriarDiretorio1: TMenuItem;
    Restries1: TMenuItem;
    AdicionarRestries1: TMenuItem;
    Manuteno1: TMenuItem;
    DesligarMicro1: TMenuItem;
    AssitenciaRemota1: TMenuItem;
    Ajuda1: TMenuItem;
    Manual1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    PopupMenu1: TPopupMenu;
    LigarInternet1: TMenuItem;
    Despausar1: TMenuItem;
    VNC1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    DBGrid4: TDBGrid;
    EdtNome: TEdit;
    PopupMenu2: TPopupMenu;
    Sair2: TMenuItem;
    MicroLaboratorio1: TMenuItem;
    Aluno2: TMenuItem;
    Log1: TMenuItem;
    Consulta1: TMenuItem;
    ConsultaGeral1: TMenuItem;
    Timer1: TTimer;
    AtivarInternet1: TMenuItem;
    BloquearAcesso1: TMenuItem;
    Sair3: TMenuItem;
    Minimizar1: TMenuItem;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CadastrarLaboratorio1Click(Sender: TObject);
    procedure CadastrarUsuario1Click(Sender: TObject);
    procedure EditarLaboratorio1Click(Sender: TObject);
    procedure AlterarUsuario1Click(Sender: TObject);
    procedure CriarTurma1Click(Sender: TObject);
    procedure AdicionarRestries1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DesligarMicro1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
      procedure telapausa();
    procedure DesligarInternet1Click(Sender: TObject);
    procedure seguirtela();
    procedure RelatoriodeLaboratorios1Click(Sender: TObject);
    procedure CriarDiretorio1Click(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure EdtNomeChange(Sender: TObject);
    procedure AcessoCompleto1Click(Sender: TObject);
    procedure DesligarMonitor2Click(Sender: TObject);
    procedure ReiniciarMicro1Click(Sender: TObject);
    procedure LogoffMicro1Click(Sender: TObject);
    procedure DesligarMicro2Click(Sender: TObject);
    procedure ConsultaGeral1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Despausar1Click(Sender: TObject);
    procedure LigarInternet1Click(Sender: TObject);
    procedure BloquearAcesso1Click(Sender: TObject);
    procedure AtivarInternet1Click(Sender: TObject);
    procedure VNC1Click(Sender: TObject);
    procedure MicroLaboratorio1Click(Sender: TObject);
    procedure Aluno2Click(Sender: TObject);
    procedure Sair3Click(Sender: TObject);
    procedure Minimizar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInicio: TFrmInicio;
  id1: integer;
   key:TRegistry;
   vnc:string;




const
  MOD_ALT = 1;
    SISTEMA = 'software\Microsoft\Windows\CurrentVersion\Policies\System';
  EXPLORER = 'Software\Microsoft\Windows\CurrentVersion\Policies\Explorer';
  NETWORK = 'Software\Microsoft\Windows\CurrentVersion\Policies\Network';
  UNINSTALL = 'Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall';
  DOS = 'Software\Policies\Microsoft\Windows\System';

implementation

uses U_CadLab, U_CadUsu, U_AltLab, U_AltUsu, U_CadTurma, U_DM, U_Login,
  U_Restricao, U_Manutencao, U_Controle, U_pausa, U_relaLabXMicro,
  U_criardiretorio, U_aluno, ConDlg,  Options, Stat, ClienteVNC, Main,
  U_consulta, About, U_relUsuario;

{$R *.dfm}

procedure TFrmInicio.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
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

procedure TFrmInicio.CadastrarLaboratorio1Click(Sender: TObject);
begin
if (FrmCadLab=nil) then
begin
FrmCadLab:=TFrmCadLab.Create(Self);
FrmCadLab.Show;
end
else
FrmCadLab.Show;

end;

procedure TFrmInicio.CadastrarUsuario1Click(Sender: TObject);
begin
if(FrmCadUsu=nil)then
begin
FrmCadUsu:=TFrmCadUsu.Create(Self);
FrmCadUsu.Show;
end
else
FrmCadUsu.Show;

end;
procedure TFrmInicio.EditarLaboratorio1Click(Sender: TObject);
begin
if(Frmaltlab=nil)then
begin
Frmaltlab:=TFrmaltlab.Create(Self);
Frmaltlab.Show;
end
else
Frmaltlab.Show;
end;

procedure TFrmInicio.AlterarUsuario1Click(Sender: TObject);
begin
if (frmaltusu=nil)then
begin
frmaltusu:=Tfrmaltusu.Create(self);
frmaltusu.Show;
end
else
frmaltusu.Show;

end;

procedure TFrmInicio.CriarTurma1Click(Sender: TObject);
begin
 if(frmcadturma=nil)then
 begin
 frmcadturma:=TFrmcadTurma.Create(Self);
 frmcadturma.Show;
 end
 else
 frmcadturma.Show;

end;

procedure TFrmInicio.AdicionarRestries1Click(Sender: TObject);
begin
dm.Q_SelectReslab.close;
dm.Q_SelectReslab.Parameters.ParamByName('login').Value:=usuario;
dm.Q_SelectReslab.Parameters.ParamByName('lab').Value:=lab;
dm.Q_SelectReslab.Open;
if(dm.Q_SelectReslab.IsEmpty) then
begin
dm.Q_ResLab.open;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=1;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=2 ;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=3;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=4;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=5;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=6;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=7;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=8;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=9;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=10;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=11;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=12;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=13;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=14;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=15;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=16;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=17;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=18;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=19;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=20;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=21;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=22;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=23;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=24;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=25;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=26;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=27;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=28;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=29;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=30;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Insert;
dm.Q_ResLabCodRes.Value:=31;
dm.Q_ResLablab.Value:=lab;
dm.Q_ResLabLogin.Value:=usuario;
dm.Q_ResLab.Post;
dm.Q_ResLab.Close;
 if (FrmCadLab=nil) then
begin
FrmRestricao:=TFrmRestricao.Create(Self);
FrmRestricao.Show;
end
else
FrmRestricao.Show;
end
else
if (FrmCadLab=nil) then
begin
FrmRestricao:=TFrmRestricao.Create(Self);
FrmRestricao.Show;
end
else
FrmRestricao.Show;
end;

procedure TFrmInicio.FormClose(Sender: TObject; var Action: TCloseAction);
 var
 wsaData: TWSAData;
  letra:pchar;
 Forcada:Boolean;
begin
FrmInicio.Release;
FrmInicio:=nil;
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


 FrmLogin.Show;
  dm.Q_FilterMicro.Close;
  dm.ConUsu.Close;


end;

procedure TFrmInicio.FormCreate(Sender: TObject);
 var

  PServer, PSenha, PLetra : PChar;
  dir:string;
begin

dm.Q_SelcMicro.Close;
dm.Q_SelcMicro.Parameters.ParamByName('ip').Value:=ip;
dm.Q_SelcMicro.Open;

dm.Q_SelcMicro.Edit;
dm.Q_SelcMicroUSUARIO.Value:=usuario;
dm.Q_SelcMicroStatus.Value:='Inativo';
dm.Q_SelcMicro.Post;

	WinExec('kill.bat',HIDE_WINDOW);
if (nv=1)then

else
if (nv=2) then

begin
AlterarUsuario1.Enabled:=false;
CadastrarUsuario1.Enabled:=false;
CadastrarLaboratorio1.Enabled:=false ;
EditarLaboratorio1.Enabled:=false;
CriarDiretorio1.Enabled:=false;
CriarTurma1.Enabled:=false;
Log1.Enabled:=false;
MicroLaboratorio1.Enabled:=false;

end;
if(nv=3) then

begin

end;
end;

procedure TFrmInicio.Button1Click(Sender: TObject);
begin

 dm.Q_SelectReslab.Parameters.ParamByName('login').Value:=usuario;
dm.Q_SelectReslab.Parameters.ParamByName('lab').Value:=lab;
dm.Q_SelectReslab.Open;
end;

procedure TFrmInicio.BitBtn1Click(Sender: TObject);
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=1;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
end;

procedure TFrmInicio.FormActivate(Sender: TObject);
begin

 ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_SHOWNORMAL);
 UnRegisterHotKey(Handle, id1);
 ShowWindow(FindWindow(nil,'Program Manager'),SW_SHOW); 
dm.Q_MicroLog.Close;
dm.Q_MicroLog.Parameters.ParamByName('lab').Value:=lab;
dm.Q_MicroLog.Open;
FrmLogin.Hide;
DM.Q_FilterMicro.Close;
DM.Q_FilterMicro.Parameters.ParamByName('Plab').Value:=lab;
dm.Q_FilterMicro.Open;
dm.ConUsu.Open;


end;

procedure TFrmInicio.DesligarMicro1Click(Sender: TObject);
begin
 if(FrmManutencao=nil)then
 begin
 FrmManutencao:=TFrmManutencao.Create(Self);
 FrmManutencao.Show;
 end
 else
 FrmManutencao.Show;
 end;
procedure TFrmInicio.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if dm.Q_FilterMicroStatus.Value='Ativo'then
begin
DBGrid1.Canvas.Brush.Color:=$00ADE662;
DBGrid1.Canvas.Font.Style:=[fsBold];
DBGrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;
if dm.Q_FilterMicroStatus.Value='livre'then
begin
DBGrid1.Canvas.Brush.Color:=$00EBC0A9;
DBGrid1.Canvas.Font.Style:=[fsBold];
DBGrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;
if dm.Q_FilterMicroStatus.Value='Inativo'then
begin
DBGrid1.Canvas.Brush.Color:=$00E6E3E4;
DBGrid1.Canvas.Font.Style:=[fsBold];
DBGrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;
end;

procedure TFrmInicio.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);

var resp:String;


begin
resp:=Socket.ReceiveText;
if resp='desligar' then
begin

end;

if resp='reiniciar' then
begin

end;

if resp='logoof' then
begin

end;


if resp='monitor' then
begin

end;


if resp='btbloqueio' then
begin

end;

if resp='btdesbloc' then
begin

end;
if resp='intebloc' then
begin

end;
if resp='intevolta' then
begin

end;
if resp='vnc' then
begin
if FrmClienteVnc=nil then
begin
FrmClienteVnc:=TFrmClienteVnc.Create(Self);
FrmClienteVnc.Show;
end
else
FrmClienteVnc.Show;
FrmClienteVnc.edPort.Text:='3333';
FrmClienteVnc.cbActive.Checked:=true;
end
end;

procedure TFrmInicio.telapausa;
begin
{ShowWindow(FindWindow('progman',nil),0);
ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_HIDE);
id1 := GlobalAddAtom('Hotkey1');
RegisterHotKey(Handle, id1, MOD_ALT, VK_TAB);
key:= TRegistry.Create;
key.RootKey := HKEY_CURRENT_USER;
key.OpenKey(SISTEMA,TRUE);
key.WriteInteger('DisableTaskMgr',1);
key.CloseKey;
	key.LazyWrite:=false;
	WinExec('kill.bat',HIDE_WINDOW); }
if(frmPausa=nil)then
begin
frmPausa:=TfrmPausa.Create(Self);
frmPausa.Show;
end
else
frmPausa.Show;

end;

procedure TFrmInicio.DesligarInternet1Click(Sender: TObject);
begin
FrmManutencao.ClientSocket1.Address :=dm.Q_FilterMicroIP.Value;
FrmManutencao.ClientSocket1.Active:=true;
FrmManutencao.ClientSocket1.Socket.SendText('intebloc');
FrmManutencao.ClientSocket1.Active:=false;
end;

procedure TFrmInicio.seguirtela;
begin
ShowWindow(FindWindow('progman',nil),1);
ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_SHOWNORMAL);
UnRegisterHotKey(Handle, id1);
key:= TRegistry.Create;
key.RootKey := HKEY_CURRENT_USER;
key.OpenKey(SISTEMA,TRUE);
key.WriteInteger('DisableTaskMgr',0);
key.CloseKey;
	key.LazyWrite:=false;
	WinExec('kill.bat',HIDE_WINDOW);


end;

procedure TFrmInicio.RelatoriodeLaboratorios1Click(Sender: TObject);
begin
 if(FrmRelLab=nil)then
 begin
 FrmRelLab:=TFrmRelLab.Create(Self);
 FrmRelLab.Show;
 end
 else
 FrmRelLab.Show;
end;

procedure TFrmInicio.CriarDiretorio1Click(Sender: TObject);
begin
if FrmCriaDire=nil then
begin
FrmCriaDire:=TFrmCriaDire.Create(Self);
FrmCriaDire.Show;
end
else
FrmCriaDire.Show;
end;

procedure TFrmInicio.ApplicationEvents1Minimize(Sender: TObject);
begin
Application.HideHint;
end;

procedure TFrmInicio.EdtNomeChange(Sender: TObject);
begin
dm.ConUsu.close;
dm.ConUsu.SQL.Clear;
dm.ConUsu.SQL.Add('select * from usuario where Cod_Nivel =:nv and Login like '+ QuotedStr(EdtNome.Text+'%'));
dm.ConUsu.Parameters.ParamByName('nv').Value:=3;
dm.ConUsu.Open;
end;

procedure TFrmInicio.AcessoCompleto1Click(Sender: TObject);
begin
if frmMain=nil then
begin
frmMain:=TfrmMain.Create(Self);
frmMain.Show;
end
else
frmMain.Show;

end;

procedure TFrmInicio.DesligarMonitor2Click(Sender: TObject);
begin
FrmManutencao.ClientSocket1.Address :=dm.Q_FilterMicroIP.Value;
FrmManutencao.ClientSocket1.Active:=true;
FrmManutencao.ClientSocket1.Socket.SendText('monitor');
FrmManutencao.ClientSocket1.Active:=false;
end;

procedure TFrmInicio.ReiniciarMicro1Click(Sender: TObject);
begin
FrmManutencao.ClientSocket1.Address :=dm.Q_FilterMicroIP.Value;
FrmManutencao.ClientSocket1.Active:=true;
FrmManutencao.ClientSocket1.Socket.SendText('reinicia');
FrmManutencao.ClientSocket1.Active:=false;
end;

procedure TFrmInicio.LogoffMicro1Click(Sender: TObject);
begin
FrmManutencao.ClientSocket1.Address :=dm.Q_FilterMicroIP.Value;
FrmManutencao.ClientSocket1.Active:=true;
FrmManutencao.ClientSocket1.Socket.SendText('logoof') ;
FrmManutencao.ClientSocket1.Active:=false;
end;

procedure TFrmInicio.DesligarMicro2Click(Sender: TObject);
begin
FrmManutencao.ClientSocket1.Address :=dm.Q_FilterMicroIP.Value;
FrmManutencao.ClientSocket1.Active:=true;
FrmManutencao.ClientSocket1.Socket.SendText('desliga');
FrmManutencao.ClientSocket1.Active:=false;
end;

procedure TFrmInicio.ConsultaGeral1Click(Sender: TObject);
begin
if FrmBusca = nil then
begin
FrmBusca:=TFrmBusca.Create(Self);
FrmBusca.Show;
end
else
FrmBusca.Show;
end;

procedure TFrmInicio.PopupMenu1Popup(Sender: TObject);
begin
if dm.Q_FilterMicroStatus.Value='Ativo' then
begin

Despausar1.Enabled:=true;
LigarInternet1.Enabled:=true;
VNC1.Enabled:=true;
BloquearAcesso1.Enabled:=true;
AtivarInternet1.Enabled:=true;
end;
if dm.Q_FilterMicroStatus.Value='livre' then
begin

Despausar1.Enabled:=false;
LigarInternet1.Enabled:=false;
VNC1.Enabled:=false;
BloquearAcesso1.Enabled:=false;
AtivarInternet1.Enabled:=false;
end;
if dm.Q_FilterMicroStatus.Value='Inativo' then
begin

Despausar1.Enabled:=false;
LigarInternet1.Enabled:=false;
VNC1.Enabled:=false;
BloquearAcesso1.Enabled:=false;
AtivarInternet1.Enabled:=false;
end; 
end;

procedure TFrmInicio.Timer1Timer(Sender: TObject);
begin
DM.Q_FilterMicro.Refresh;
end;

procedure TFrmInicio.SpeedButton1Click(Sender: TObject);
begin
FrmInicio.Hide;
FRMPAUSA.Show;

end;

procedure TFrmInicio.Despausar1Click(Sender: TObject);
begin

FrmManutencao.ClientSocket1.Address :=dm.Q_FilterMicroIP.Value;
FrmManutencao.ClientSocket1.Active:=true;
FrmManutencao.ClientSocket1.Socket.SendText('desbloc');
FrmManutencao.ClientSocket1.Active:=false;
end;

procedure TFrmInicio.LigarInternet1Click(Sender: TObject);
begin

FrmManutencao.ClientSocket1.Address :=dm.Q_FilterMicroIP.Value;
FrmManutencao.ClientSocket1.Active:=true;
FrmManutencao.ClientSocket1.Socket.SendText('intebloc');
FrmManutencao.ClientSocket1.Active:=false;
end;

procedure TFrmInicio.BloquearAcesso1Click(Sender: TObject);
begin

FrmManutencao.ClientSocket1.Address :=dm.Q_FilterMicroIP.Value;
FrmManutencao.ClientSocket1.Active:=true;
FrmManutencao.ClientSocket1.Socket.SendText('btbloqueio');
FrmManutencao.ClientSocket1.Active:=false;
end;

procedure TFrmInicio.AtivarInternet1Click(Sender: TObject);
begin

FrmManutencao.ClientSocket1.Address :=dm.Q_FilterMicroIP.Value;
FrmManutencao.ClientSocket1.Active:=true;
FrmManutencao.ClientSocket1.Socket.SendText('intevolta');
FrmManutencao.ClientSocket1.Active:=false;

end;

procedure TFrmInicio.VNC1Click(Sender: TObject);
begin
vnc:=dm.Q_FilterMicroIP.Value;
 if frmMain=nil then
begin
frmMain:=TfrmMain.Create(Self);
frmMain.Show;
end
else
frmMain.Show;
frmMain.mnuConnect.Click;
frmConDlg.edHost.Text:=vnc;
frmConDlg.sedPort.Text:='3300';
frmConDlg.bOK.Click;
end;

procedure TFrmInicio.MicroLaboratorio1Click(Sender: TObject);
begin
if FrmRelLab=nil then
begin
FrmRelLab:=TFrmRelLab.Create(Self);
FrmRelLab.Show;
end
else
FrmRelLab.Show;
end;

procedure TFrmInicio.Aluno2Click(Sender: TObject);
begin
if FRmrelaluno=nil then
begin
FRmrelaluno:=TFRmrelaluno.Create(Self);
FRmrelaluno.Show;
end
else
FRmrelaluno.Show;

end;

procedure TFrmInicio.Sair3Click(Sender: TObject);
begin
close;
end;

procedure TFrmInicio.Minimizar1Click(Sender: TObject);
begin
Application.Minimize;
end;

end.
