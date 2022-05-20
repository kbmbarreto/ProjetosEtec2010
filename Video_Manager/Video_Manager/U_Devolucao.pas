unit U_Devolucao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids;

type
  TFrmDevolucao = class(TForm)
    DBGrid1: TDBGrid;
    BtnDevolucao: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnDevolucaoClick(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDevolucao: TFrmDevolucao;

implementation

uses U_DM, U_CadCli, U_ConFil, U_CadFil, DateUtils;

{$R *.dfm}

procedure TFrmDevolucao.FormCreate(Sender: TObject);
begin
dm.ADOQryCadCli.open;
dm.ADOQrCadFil.Open;
dm.ADOQrDevolucao.open;
end;

procedure TFrmDevolucao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.adoqrycadcli.close;
dm.ADOQrCadFil.close;
dm.ADOQrDevolucao.close;
end;

procedure TFrmDevolucao.BtnDevolucaoClick(Sender: TObject);
begin
dm.ADOQrDevolucao.Edit;
dm.ADOQrDevolucaoDATA_DEVOLUCAO.Value:=DateOf(now);
dm.ADOQrDevolucaovalor_total.value:=dm.ADOQrDevolucaoValor.value;
dm.ADOQrDevolucao.post;
dm.ADOQrDevolucao.close;
dm.ADOQrDevolucao.Open;
end;

procedure TFrmDevolucao.DBLookupComboBox1CloseUp(Sender: TObject);
begin
dm.ADOQrDevolucao.Close;
dm.ADOQrDevolucao.SQL.Clear;
dm.ADOQrDevolucao.SQL.add('select * from locacoes where data_devolucao is null and cod_cliente = '+ dm.adoqryCadCliCod_Cliente.AsString);
dm.ADOQrDevolucao.Open;

end;

end.
