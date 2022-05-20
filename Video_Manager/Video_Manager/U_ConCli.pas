unit U_ConCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Spin;

type
  TFrmConCli = class(TForm)
    Label1: TLabel;
    EdtNome: TEdit;
    Label2: TLabel;
    EdtCidade: TEdit;
    Label4: TLabel;
    EdtRG: TEdit;
    GrpBxAniver: TGroupBox;
    SpnEdtDia: TSpinEdit;
    SpnEdtMes: TSpinEdit;
    Label3: TLabel;
    Label5: TLabel;
    ChckBxAniver: TCheckBox;
    DBGrid1: TDBGrid;
    BtBtnPesquisar: TBitBtn;
    BtBtnImprimir: TBitBtn;
    procedure ChckBxAniverClick(Sender: TObject);
    procedure BtBtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConCli: TFrmConCli;

implementation

uses U_DM;

{$R *.dfm}

procedure TFrmConCli.ChckBxAniverClick(Sender: TObject);
begin
if ChckBxAniver.Checked then
  GrpBxAniver.enabled := true
else
  GrpBxAniver.Enabled := false;
end;

procedure TFrmConCli.BtBtnPesquisarClick(Sender: TObject);
var sql : string;
begin
sql:= 'select * from clientes where 1=1  ' ;

if edtNome.text <> '' then
  sql :=sql + ' and nome like '+ QuotedStr(edtNome.Text+'%');
if edtRG.text <> '' then
  sql :=sql + ' and rg = '+ QuotedStr(edtRG.Text);
if edtcidade.Text <> '' then
  sql :=sql + ' and cidade like '+ QuotedStr(edtCidade.Text+'%');
if ChckBxAniver.Checked then
begin
  sql := sql + ' and day(datanascimento) = '+ QuotedStr(SpnEdtDia.Text);
  sql := sql + ' and month(datanascimento) = '+ QuotedStr(SpnEdtMes.Text);
end;

dm.ADOQrConCli.close;
dm.ADOQrConCli.sql.clear;
dm.ADOQrConCli.sql.add(sql);
dm.ADOQrConCli.open;

end;
end.
