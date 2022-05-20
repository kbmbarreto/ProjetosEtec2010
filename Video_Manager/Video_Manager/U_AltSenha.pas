unit U_AltSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmAltSenha = class(TForm)
    LblSenhaAtual: TLabel;
    LblNovaSenha: TLabel;
    LblConfSenha: TLabel;
    EdtSenhaAtual: TEdit;
    EdtNovaSenha: TEdit;
    EdtConfSenha: TEdit;
    LblUsuario: TLabel;
    EdtUsuario: TEdit;
    BtBtnSalvar: TBitBtn;
    BtBtnCancelar: TBitBtn;
    procedure BtBtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtBtnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAltSenha: TFrmAltSenha;

implementation

uses U_CadUsua, U_CadUsu, U_DM, U_Login;

{$R *.dfm}

procedure TFrmAltSenha.BtBtnCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFrmAltSenha.FormActivate(Sender: TObject);
begin
EdtUsuario.Text := usuario;
end;

procedure TFrmAltSenha.BtBtnSalvarClick(Sender: TObject);
begin
dm.ADOQrVerifUsu.close;
dm.ADOQrVerifUsu.Parameters.parambyname('usu').value := EdtUsuario.Text;
dm.ADOQrVerifUsu.Parameters.ParamByName('senha').Value := EdtSenhaAtual.text;
dm.ADOQrVerifUsu.Open;
 //Verifica se existe usuario cadastro com esse usuario e senha.
if not (dm.ADOQrVerifUsu.IsEmpty) then
begin
 // VERIFICA SE NOVA SENHA CONFERE.
 if edtnovasenha.text = EdtConfSenha.text then
 begin
   dm.adoqraux.close;
   dm.ADOQrAux.SQL.Add('update usuario set senha = '+QuotedStr(EdtNovaSenha.Text)+
   'where usuario = ' + QuotedStr(usuario));
   dm.AdoQrAux.ExecSQL;
    Application.MessageBox('Atualizado com sucesso.','Atenção',MB_ICONEXCLAMATION);
 end
 else
    Application.MessageBox('Nova senha não confere.','Atenção',MB_ICONEXCLAMATION);
end
else
begin
Application.MessageBox('Usuario e senha atual não confere.','Atenção',MB_ICONEXCLAMATION);
end;
end;

end.
