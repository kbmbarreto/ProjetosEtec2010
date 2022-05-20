unit U_Locacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, RpCon, RpConDS, RpRave,
  RpDefine, RpBase, RpSystem;

type
  TFrmLocacao = class(TForm)
    EdtFilme: TEdit;
    EdtCliente: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BtBtnProcurar1: TBitBtn;
    BtBtnProcurar2: TBitBtn;
    BtBtnAdicionar: TBitBtn;
    BtBtnRemover: TBitBtn;
    DBGrid1: TDBGrid;
    BtBtnImprimir: TBitBtn;
    EdtCodNome: TEdit;
    edtcodfil: TEdit;
    RvSystem1: TRvSystem;
    RvProject1: TRvProject;
    RvDataSetConnectionConCli: TRvDataSetConnection;
    procedure BtBtnProcurar1Click(Sender: TObject);
    procedure BtBtnProcurar2Click(Sender: TObject);
    procedure BtBtnAdicionarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtBtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocacao: TFrmLocacao;

implementation

uses U_DM, U_Pesquisar, DateUtils;

{$R *.dfm}

procedure TFrmLocacao.BtBtnProcurar1Click(Sender: TObject);
begin
try
FrmPesquisar:=TFrmPesquisar.create(self);
tipo:='Filme';
FrmPesquisar.showmodal;
finally
FrmPesquisar.Release;
end;
end;

procedure TFrmLocacao.BtBtnProcurar2Click(Sender: TObject);
begin
try
FrmPesquisar:=TFrmPesquisar.create(self);
tipo:='Cliente';
FrmPesquisar.showmodal;
finally
FrmPesquisar.Release;
end;
end;

procedure TFrmLocacao.BtBtnAdicionarClick(Sender: TObject);
begin
dm.ADOQrLocacao.Insert;
dm.ADOQrLocacaoCOD_CLIENTE.Value := StrToInt(EdtCodNome.text);
DM.ADOQrLocacaoCOD_FILME.Value := StrToInt(edtcodfil.text);
DM.ADOQrLocacaoDATA_RETIRADA.value := DateOf(now);
Dm.ADOQrLocacao.post;
end;

procedure TFrmLocacao.FormActivate(Sender: TObject);
begin
dm.ADOQrLocacao.Open;
end;

procedure TFrmLocacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.ADOQrLocacao.Close;
end;

procedure TFrmLocacao.BtBtnImprimirClick(Sender: TObject);
begin
RvProject1.Execute;
end;

end.
