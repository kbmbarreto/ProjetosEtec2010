unit U_DM;

interface

uses
  SysUtils, Classes, DB, QForms, ADODB, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQrCadUsu: TADOQuery;
    ADOQrCadUsuUSUARIO: TStringField;
    ADOQrCadUsuSENHA: TStringField;
    DtSrcCadUsu: TDataSource;
    ADOQrVerifUsu: TADOQuery;
    ADOQryCadCat: TADOQuery;
    ADOQryCadCatCOD_CATEGORIA: TBCDField;
    ADOQryCadCatNOME_CATEGORIA: TStringField;
    DtSrcCadCat: TDataSource;
    DtSrcCadCli: TDataSource;
    ADOQryCadCli: TADOQuery;
    ADOQryCadCliCOD_CLIENTE: TBCDField;
    ADOQryCadCliRG: TStringField;
    ADOQryCadCliNOME: TStringField;
    ADOQryCadCliENDERECO: TStringField;
    ADOQryCadCliBAIRRO: TStringField;
    ADOQryCadCliCIDADE: TStringField;
    ADOQryCadCliESTADO: TStringField;
    ADOQryCadCliTELEFONE: TStringField;
    ADOQryCadCliEMAIL: TStringField;
    ADOQryCadCliDATANASCIMENTO: TDateTimeField;
    ADOQryCadClisexo: TStringField;
    ADOQrListCat: TADOQuery;
    DtSrcListCat: TDataSource;
    ADOQrCadFil: TADOQuery;
    ADOQrCadFilCOD_FILME: TBCDField;
    ADOQrCadFilFILME: TStringField;
    ADOQrCadFilCOD_CATEGORIA: TBCDField;
    ADOQrCadFilDIRETOR: TStringField;
    ADOQrCadFilVALOR_LOCACAO: TFloatField;
    ADOQrCadFilRESERVADA: TStringField;
    ADOQrCadFilNome_Categoria: TStringField;
    DtSrcCadFil: TDataSource;
    ADOQrVerifUsuUSUARIO: TStringField;
    ADOQrVerifUsuSENHA: TStringField;
    ADOQrAux: TADOQuery;
    ADOQrConCli: TADOQuery;
    DtSrcConCli: TDataSource;
    ADOQrLocacao: TADOQuery;
    ADOQrLocacaoCOD_LOCACAO: TBCDField;
    ADOQrLocacaoCOD_CLIENTE: TBCDField;
    ADOQrLocacaoCOD_FILME: TBCDField;
    ADOQrLocacaoDATA_RETIRADA: TDateTimeField;
    ADOQrLocacaoDATA_DEVOLUCAO: TDateTimeField;
    ADOQrLocacaoNome_cliente: TStringField;
    ADOQrLocacaonome_Filme: TStringField;
    ADOQrLocacaoValor_Filme: TCurrencyField;
    DtSrcLocacao: TDataSource;
    ADOQrPesquisar: TADOQuery;
    DtSrcPesquisar: TDataSource;
    ADOQrDevolucao: TADOQuery;
    DtSrcDevolucao: TDataSource;
    ADOQrDevolucaoDATA_RETIRADA: TDateTimeField;
    ADOQrDevolucaoNome_Cliente: TStringField;
    ADOQrDevolucaoNome_Filme: TStringField;
    ADOQrDevolucaoValor: TCurrencyField;
    ADOQrDevolucaoCOD_CLIENTE: TBCDField;
    ADOQrDevolucaoCOD_FILME: TBCDField;
    ADOQrDevolucaoCOD_LOCACAO: TBCDField;
    ADOQrDevolucaoDATA_DEVOLUCAO: TDateTimeField;
    ADOQrDevolucaovalor_total: TBCDField;
    ADOQrConCliCOD_CLIENTE: TBCDField;
    ADOQrConCliRG: TStringField;
    ADOQrConCliNOME: TStringField;
    ADOQrConCliENDERECO: TStringField;
    ADOQrConCliBAIRRO: TStringField;
    ADOQrConCliCIDADE: TStringField;
    ADOQrConCliESTADO: TStringField;
    ADOQrConCliTELEFONE: TStringField;
    ADOQrConCliEMAIL: TStringField;
    ADOQrConCliDATANASCIMENTO: TDateTimeField;
    ADOQrConClisexo: TStringField;
    procedure DtSrcCadUsuDataChange(Sender: TObject; Field: TField);
    procedure ADOQrCadUsuAfterPost(DataSet: TDataSet);
    procedure ADOQrCadUsuAfterCancel(DataSet: TDataSet);
    procedure ADOQrDevolucaoCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses U_CadUsu, U_CadUsua, DateUtils;

{$R *.dfm}

procedure TDM.DtSrcCadUsuDataChange(Sender: TObject; Field: TField);
begin
 if DM.DtSrcCadUsu.DataSet.state in [dsinsert, dsedit] then
 begin
 FrmCadUsua.PnlCadastro.Enabled := True;
 FrmCadUsua.BtBtnNovo.Enabled := false;
 FrmCadUsua.BtBtnSalvar.Enabled := True;
 FrmCadUsua.SpdBtnCancelar.Enabled := True;
 FrmCadUsua.BtBtnEditar.Enabled := false;
 FrmCadUsua.BtBtnExcluir.Enabled := false;
 end;
end;

procedure TDM.ADOQrCadUsuAfterPost(DataSet: TDataSet);
begin
 FrmCadUsua.PnlCadastro.Enabled := false;
 FrmCadUsua.BtBtnNovo.Enabled := true;
 FrmCadUsua.BtBtnSalvar.Enabled := false;
 FrmCadUsua.SpdBtnCancelar.Enabled := false;
 FrmCadUsua.BtBtnEditar.Enabled := false;
 FrmCadUsua.BtBtnExcluir.Enabled := false;
end;

procedure TDM.ADOQrCadUsuAfterCancel(DataSet: TDataSet);
begin
 FrmCadUsua.PnlCadastro.Enabled := false;
 FrmCadUsua.BtBtnNovo.Enabled := true;
 FrmCadUsua.BtBtnSalvar.Enabled := false;
 FrmCadUsua.SpdBtnCancelar.Enabled := false;
 FrmCadUsua.BtBtnEditar.Enabled := false;
 FrmCadUsua.BtBtnExcluir.Enabled := false;
end;

procedure TDM.ADOQrDevolucaoCalcFields(DataSet: TDataSet);
var data: TDatetime;
var x: extended;
begin
dm.ADOQrAux.close;
dm.ADOQrAux.SQL.clear;
dm.ADOQrAux.sql.Add('select * from filme where cod_filme = ' +IntToStr(DataSet.FieldValues['cod_filme']));
dm.ADOQrAux.open;
data:= IncDay(DataSet.FieldValues['data_retirada'], 3);
x:= data - dateof(now);
if x<0 then
dataset.FieldValues['valor']:= strtofloat (dm.ADOQrAux.FieldValues['valor_locacao']) + (x*-1)
else
DataSet.FieldValues['valor']:= strtofloat (dm.ADOQrAux.FieldValues['valor_locacao']);

end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
    ADOConnection1.close;
    ADOConnection1.ConnectionString := 'File Name=' + ExtractFilePath (Application.exeName)+ 'conex.udl';
    ADOConnection1.Open;

end;

end.
