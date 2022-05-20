unit U_AltLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, Grids, DBGrids, Buttons;

type
  TFrmAltLab = class(TForm)
    Panel3: TPanel;
    Panel1: TPanel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    BtBtnExlcuir: TBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    BtnBaixo_Novo: TBitBtn;
    BtnBaixo_Cancelar: TBitBtn;
    BtnBaixo_Salvar: TBitBtn;
    btnBaixo_Editar: TBitBtn;
    BtnBaixo_Excluir: TBitBtn;
    BtnCima_Cancelar: TBitBtn;
    BtnCima_Salvar: TBitBtn;
    BtnCima_Editar: TBitBtn;
    BtnCima_Excluir: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BtBtnExlcuirClick(Sender: TObject);
    procedure BtnCima_ExcluirClick(Sender: TObject);
    procedure BtnCima_EditarClick(Sender: TObject);
    procedure BtnCima_SalvarClick(Sender: TObject);
    procedure BtnCima_CancelarClick(Sender: TObject);
    procedure BtnBaixo_NovoClick(Sender: TObject);
    procedure BtnBaixo_ExcluirClick(Sender: TObject);
    procedure btnBaixo_EditarClick(Sender: TObject);
    procedure BtnBaixo_SalvarClick(Sender: TObject);
    procedure BtnBaixo_CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAltLab: TFrmAltLab;

implementation

uses U_DM;

{$R *.dfm}

procedure TFrmAltLab.FormActivate(Sender: TObject);
begin
dm.Q_Laboratorio.Open;

end;

procedure TFrmAltLab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.Q_Laboratorio.Close;
dm.Q_FilterMicro.close;
frmaltlab.Release;
frmaltlab:=nil;
end;

procedure TFrmAltLab.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  dm.Q_FilterMicro.close;

dm.Q_FilterMicro.Parameters.ParamByName('Plab').Value:=dm.Q_LaboratorioCodLAb.Value;
dm.Q_FilterMicro.open;
end;

procedure TFrmAltLab.DBGrid1CellClick(Column: TColumn);
begin
dm.Q_FilterMicro.close;
dm.Q_FilterMicro.Parameters.ParamByName('Plab').Value:=dm.Q_LaboratorioCodLAb.Value;
dm.Q_FilterMicro.open;
end;

procedure TFrmAltLab.BtBtnExlcuirClick(Sender: TObject);
var
resp:integer;
begin
if MESSAGEBOX(Application.Handle, 'Deseja Excluir o resgistro', 'Excluir', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_YES then
dm.Q_FilterMicro.Delete;
end;

procedure TFrmAltLab.BtnCima_ExcluirClick(Sender: TObject);
var resp:integer;
begin
resp:=Application.MessageBox('Deseja mesmo excluir ?','Excluir',MB_YESNO);
if (resp=idyes) then
begin
dm.Q_Laboratorio.Delete;
BtnCima_Excluir.Enabled:=true;
BtnCima_Editar.Enabled:=true;
BtnCima_Salvar.Enabled:=false;
BtnCima_Cancelar.Enabled:=false;
end;
end;

procedure TFrmAltLab.BtnCima_EditarClick(Sender: TObject);
begin
dm.Q_Laboratorio.Edit;
BtnCima_Excluir.Enabled:=false;
BtnCima_Editar.Enabled:=false;
BtnCima_Salvar.Enabled:=true;
BtnCima_Cancelar.Enabled:=true;
end;

procedure TFrmAltLab.BtnCima_SalvarClick(Sender: TObject);
begin
dm.Q_Laboratorio.Post;
BtnCima_Excluir.Enabled:=true;
BtnCima_Editar.Enabled:=true;
BtnCima_Salvar.Enabled:=false;
BtnCima_Cancelar.Enabled:=false;
end;

procedure TFrmAltLab.BtnCima_CancelarClick(Sender: TObject);
begin
BtnCima_Excluir.Enabled:=true;
BtnCima_Editar.Enabled:=true;
BtnCima_Salvar.Enabled:=false;
BtnCima_Cancelar.Enabled:=false;
end;

procedure TFrmAltLab.BtnBaixo_NovoClick(Sender: TObject);
begin
dm.Q_FilterMicro.Insert;
BtnBaixo_Novo.Enabled:=false;
BtnBaixo_Cancelar.Enabled:=true;
BtnBaixo_Salvar.Enabled:=true;
btnBaixo_Editar.Enabled:=false;
BtnBaixo_Excluir.Enabled:=false;
end;

procedure TFrmAltLab.BtnBaixo_ExcluirClick(Sender: TObject);
var resp:integer;
begin
resp:=Application.MessageBox('Deseja mesmo excluir ?','Excluir',MB_YESNO);
if (resp=idyes) then
begin
dm.Q_FilterMicro.Delete;
BtnBaixo_Novo.Enabled:=true;
BtnBaixo_Cancelar.Enabled:=false;
BtnBaixo_Salvar.Enabled:=false;
btnBaixo_Editar.Enabled:=true;
BtnBaixo_Excluir.Enabled:=true;
  end
  else
  begin
BtnBaixo_Novo.Enabled:=true;
BtnBaixo_Cancelar.Enabled:=false;
BtnBaixo_Salvar.Enabled:=false;
btnBaixo_Editar.Enabled:=true;
BtnBaixo_Excluir.Enabled:=true;
  end;
 end;
procedure TFrmAltLab.btnBaixo_EditarClick(Sender: TObject);
begin
dm.Q_FilterMicro.Edit;
BtnBaixo_Novo.Enabled:=false;
BtnBaixo_Cancelar.Enabled:=true;
BtnBaixo_Salvar.Enabled:=true;
btnBaixo_Editar.Enabled:=false;
BtnBaixo_Excluir.Enabled:=false;
end;

procedure TFrmAltLab.BtnBaixo_SalvarClick(Sender: TObject);
begin
dm.Q_FilterMicro.Post;
BtnBaixo_Novo.Enabled:=true;
BtnBaixo_Cancelar.Enabled:=false;
BtnBaixo_Salvar.Enabled:=false;
btnBaixo_Editar.Enabled:=true;
BtnBaixo_Excluir.Enabled:=true;
end;

procedure TFrmAltLab.BtnBaixo_CancelarClick(Sender: TObject);
begin
dm.Q_FilterMicro.Cancel;
BtnBaixo_Novo.Enabled:=true;
BtnBaixo_Cancelar.Enabled:=false;
BtnBaixo_Salvar.Enabled:=false;
btnBaixo_Editar.Enabled:=true;
BtnBaixo_Excluir.Enabled:=true;
end;

end.
