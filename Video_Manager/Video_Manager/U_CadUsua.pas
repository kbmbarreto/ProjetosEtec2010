unit U_CadUsua;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, Grids, DBGrids;

type
  TFrmCadUsua = class(TForm)
    SpdBtnCancelar: TSpeedButton;
    DBGrid1: TDBGrid;
    BtBtnNovo: TBitBtn;
    BtBtnSalvar: TBitBtn;
    BtBtnExcluir: TBitBtn;
    BtBtnEditar: TBitBtn;
    PnlCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    LblConfSenha: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    EdtConfSenha: TEdit;
    procedure BtBtnNovoClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BtBtnEditarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtBtnSalvarClick(Sender: TObject);
    procedure SpdBtnCancelarClick(Sender: TObject);
    procedure BtBtnExcluirClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadUsua: TFrmCadUsua;

implementation

uses U_DM;

{$R *.dfm}

procedure TFrmCadUsua.BtBtnNovoClick(Sender: TObject);
begin
  dm.ADOQrCadUsu.Insert;
  DBEdit1.SetFocus;
  EdtConfSenha.clear;

end;

procedure TFrmCadUsua.DBGrid1CellClick(Column: TColumn);
begin
if not(dm.ADOQrCadUsu.IsEmpty) then
  begin
    BtBtnExcluir.Enabled := true;
    BtBtnEditar.Enabled := true;
    end
    else
      begin
      BtBtnExcluir.Enabled := false;
      BtBtnEditar.Enabled := false;
end;
End;


procedure TFrmCadUsua.BtBtnEditarClick(Sender: TObject);
begin
  dm.ADOQrCadUsu.Edit;
end;

procedure TFrmCadUsua.FormActivate(Sender: TObject);
begin
dm.ADOQrCadUsu.Open;
end;

procedure TFrmCadUsua.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Dm.ADOQrCadUsu.Close;
end;

procedure TFrmCadUsua.BtBtnSalvarClick(Sender: TObject);
begin
if dm.ADOQrCadUsuSENHA.Value = EdtConfSenha.Text then
Dm.ADOQrCadUsu.Post
else
begin
Application.MessageBox('Senha não confere !','Erro',MB_ICONERROR);
DBEdit2.setFocus;
end;
end;

procedure TFrmCadUsua.SpdBtnCancelarClick(Sender: TObject);
begin
dm.ADOQrCadUsu.Cancel;
end;

procedure TFrmCadUsua.BtBtnExcluirClick(Sender: TObject);
var
resp:integer;
begin
resp:=Application.MessageBox('Deseja realmente excluir ?','Atenção',36);
if (resp = idyes) then
begin
dm.ADOQrCadUsu.delete;
BtBtnExcluir.Enabled:=false;
BtBtnEditar.Enabled:=false;
end;
end;

procedure TFrmCadUsua.DBEdit1Exit(Sender: TObject);
begin
if dm.ADOQrCadUsuUSUARIO.Value = '' then
begin
Application.MessageBox('Usuário não pode ser vazio !','Atenção',MB_ICONINFORMATION);
DBEdit1.SetFocus;
end;
end;
procedure TFrmCadUsua.DBEdit2Exit(Sender: TObject);
begin
if dm.ADOQrCadUsuSENHA.Value = '' then
begin
Application.MessageBox('Senha não pode ser vazia !','Atenção',MB_ICONINFORMATION);
DBEdit2.SetFocus;
end;
end;

end.
