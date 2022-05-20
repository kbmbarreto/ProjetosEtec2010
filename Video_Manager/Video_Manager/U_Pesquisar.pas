unit U_Pesquisar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TFrmPesquisar = class(TForm)
    Label1: TLabel;
    EdtPesquisar: TEdit;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure EdtPesquisarChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisar: TFrmPesquisar;
  tipo : string;

implementation

uses U_Locacao, U_DM, U_AltSenha, DB;

{$R *.dfm}

procedure TFrmPesquisar.FormActivate(Sender: TObject);
begin
if tipo = 'Cliente' then
begin
   dm.ADOQrPesquisar.close;
   dm.ADOQrPesquisar.SQL.Clear;
   dm.ADOQrPesquisar.SQL.Add('select cod_cliente, nome from clientes');
   dm.ADOQrPesquisar.Open;
end
else
begin
  dm.ADOQrPesquisar.close;
  dm.ADOQrPesquisar.SQL.Clear;
  dm.ADOQrPesquisar.SQL.Add('select cod_filme, filme from filme');
  dm.ADOQrPesquisar.Open;
end;
end;

procedure TFrmPesquisar.EdtPesquisarChange(Sender: TObject);
begin
if tipo = 'Cliente' then
begin
  dm.ADOQrPesquisar.close;
  dm.ADOQrPesquisar.SQL.Clear;
  dm.ADOQrPesquisar.SQL.Add('select cod_cliente, nome from clientes where nome like ' +QuotedStr(EdtPesquisar.Text+'%'));
  dm.ADOQrPesquisar.Open;
end
else
  dm.ADOQrPesquisar.close;
  dm.ADOQrPesquisar.SQL.Clear;
  dm.ADOQrPesquisar.SQL.Add('select cod_filme, filme from filme where filme like '+QuotedStr(EdtPesquisar.Text+'%'));
  dm.ADOQrPesquisar.Open;
end;
procedure TFrmPesquisar.DBGrid1DblClick(Sender: TObject);
begin
if tipo = 'Cliente' then
begin
FrmLocacao.EdtCodNome.text := inttostr(dm.DtSrcPesquisar.DataSet.FieldValues['cod_cliente']);
FrmLocacao.EdtCliente.text := dm.DtSrcPesquisar.DataSet.FieldValues ['nome'];
close;
end
else
begin
FrmLocacao.edtcodfil.text := IntToStr(dm.DtSrcPesquisar.DataSet.FieldValues['cod_filme']);
FrmLocacao.EdtFilme.text := dm.DtSrcPesquisar.DataSet.FieldValues ['filme'];
close;
end;
end;
end.
