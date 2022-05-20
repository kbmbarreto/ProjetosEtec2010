unit U_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, XPMan;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EdtUsuario: TEdit;
    edtSenha: TEdit;
    BtBtnEntrar: TBitBtn;
    btbtnSair: TBitBtn;
    XPMnfst: TXPManifest;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure btbtnSairClick(Sender: TObject);
    procedure BtBtnEntrarClick(Sender: TObject);
    procedure EdtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;
  usuario:string;

implementation

uses U_Menu, U_DM;

{$R *.dfm}

procedure TFrmLogin.btbtnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.BtBtnEntrarClick(Sender: TObject);
begin
dm.ADOQrVerifUsu.close;
dm.ADOQrVerifUsu.Parameters.ParamByName('usu').Value := Edtusuario.Text;
Dm.ADOQrVerifUsu.Parameters.ParamByName('senha').value := edtSenha.text;
dm.ADOQrVerifUsu.Open;
if not (dm.ADOQrVerifUsu.IsEmpty) then
begin
usuario:= DM.ADOQrVerifUsuUSUARIO.Value;
FrmMenu := TFrmMenu.Create(self);
FrmMenu.show;
FrmLogin.Hide;
end
else
begin
Application.MessageBox('Usuário ou senha inválido','erro',MB_ICONERROR);
EdtUsuario.setfocus;
end;
end;

procedure TFrmLogin.EdtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
edtsenha.setfocus;
end;
end;

procedure TFrmLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
begin
btbtnentrar.click;
end;
end;

end.
