unit U_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Menus, XPMan, ImgList, ComCtrls, ToolWin,
  Buttons;

type
  TFrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    AlterarSenha1: TMenuItem;
    Criarusuario1: TMenuItem;
    Sair1: TMenuItem;
    Cadastro1: TMenuItem;
    Sair2: TMenuItem;
    Categoria1: TMenuItem;
    Filme1: TMenuItem;
    Cliente1: TMenuItem;
    Consulta1: TMenuItem;
    Emprstimos1: TMenuItem;
    Clientes1: TMenuItem;
    Filmes1: TMenuItem;
    Aluguel1: TMenuItem;
    Emprstimo1: TMenuItem;
    Devoluo1: TMenuItem;
    Sobre1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre2: TMenuItem;
    ImageList1: TImageList;
    XPManifest1: TXPManifest;
    ToolBar1: TToolBar;
    TlBtnEmprestimo: TToolButton;
    TlBtnDevolucao: TToolButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Sair2Click(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
    procedure AlterarSenha1Click(Sender: TObject);
    procedure Criarusuario1Click(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure Filme1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Emprstimo1Click(Sender: TObject);
    procedure Devoluo1Click(Sender: TObject);
    procedure TlBtnDevolucaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses U_Sobre, U_AltSenha, U_CadUsu, U_CadUsua, U_CadCat, U_CadCli,
  U_CadFil, U_ConCli, U_Locacao, U_Devolucao;

{$R *.dfm}

procedure TFrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFrmMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var resp : integer;
begin
resp := Application.MessageBox('Deseja finalizar?','Sair',36);
if (resp = idyes) then
begin
canclose := true;
end
else
canclose := false;
end;

procedure TFrmMenu.Sair2Click(Sender: TObject);
begin
close;
end;

procedure TFrmMenu.Sobre2Click(Sender: TObject);
begin
try
FrmSobre := TFrmSobre.create(self);
FrmSobre.ShowModal;
finally
FrmSobre.release;
end;

end;
procedure TFrmMenu.AlterarSenha1Click(Sender: TObject);
begin
try
FrmAltSenha := TFrmAltSenha.create(self);
FrmAltSenha.ShowModal;
finally
FrmAltSenha.release;
end;
end;

procedure TFrmMenu.Criarusuario1Click(Sender: TObject);
begin
try
FrmCadUsua := TFrmCadUsua.create(self);
FrmCadUsua.showmodal;
finally
FrmCadUsua.Release;
end;
end;
procedure TFrmMenu.Categoria1Click(Sender: TObject);
begin
try
FrmCadCat := TFrmCadCat.create(self);
FrmCadCat.showmodal;
finally
FrmCadCat.Release;
end;
end;

procedure TFrmMenu.Filme1Click(Sender: TObject);
begin
try
FrmCadFil:= TFrmCadFil.create(self);
FrmCadFil.showmodal;
finally
FrmCadfil.release;
end;
end;





procedure TFrmMenu.Cliente1Click(Sender: TObject);
begin
try
FrmCadcli:= TFrmCadcli.create(self);
FrmCadcli.showmodal;
finally
FrmCadcli.release;
end;
end;

procedure TFrmMenu.Clientes1Click(Sender: TObject);
begin
try
FrmConCli := TFrmConCli.Create(self);
FrmConCli.ShowModal;
finally
FrmConCli.Release;
end;
end;

procedure TFrmMenu.Emprstimo1Click(Sender: TObject);
begin
try
FrmLocacao:=TFrmLocacao.Create(self);
FrmLocacao.ShowModal;
finally
FrmLocacao.Release;
end;
end;

procedure TFrmMenu.Devoluo1Click(Sender: TObject);
begin
try
FrmDevolucao := TFrmDevolucao.create(self);
FrmDevolucao.ShowModal;
finally
FrmDevolucao.Release;
end;
end;

procedure TFrmMenu.TlBtnDevolucaoClick(Sender: TObject);
begin
try
FrmDevolucao := TFrmDevolucao.create(self);
FrmDevolucao.ShowModal;
finally
FrmDevolucao.Release;
end;
end;

procedure TFrmMenu.FormCreate(Sender: TObject);
  var path : String;
begin
    path := ExtractFilePath (Application.exename) + 'help\help.hlp';
    if FileExists(path) then
    Application.HelpFile :=path;
end;

procedure TFrmMenu.Ajuda1Click(Sender: TObject);
begin
    Application.HelpCommand(HELP_FINDER, 0);
end;

end.
