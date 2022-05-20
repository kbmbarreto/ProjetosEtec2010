unit U_CadTurma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons;

type
  TFrmCadTurma = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    btnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnNovo: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure BtbtnFecharClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTurma: TFrmCadTurma;

implementation

uses U_DM;

{$R *.dfm}

procedure TFrmCadTurma.FormActivate(Sender: TObject);
begin
dm.Q_Turma.Open;

end;

procedure TFrmCadTurma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmcadturma.Release;
frmcadturma:=nil;
dm.Q_Turma.Close;
end;

procedure TFrmCadTurma.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
dbedit2.SetFocus;
end;

procedure TFrmCadTurma.BtbtnFecharClick(Sender: TObject);
begin
 close;
end;

procedure TFrmCadTurma.BtnExcluirClick(Sender: TObject);
var resp:integer;
begin
resp:=Application.MessageBox('Deseja mesmo excluir ?','Excluir',MB_YESNO);
if (resp=idyes) then
begin
dm.Q_Turma.Delete;
BtnCancelar.Enabled:=false;
BtnSalvar.Enabled:=false;
btnEditar.Enabled:=false;
BtnExcluir.Enabled:=false;
BtnNovo.Enabled:=true;
end;
end;
procedure TFrmCadTurma.BtnCancelarClick(Sender: TObject);
begin
dm.Q_Turma.Cancel;
BtnCancelar.Enabled:=false;
BtnSalvar.Enabled:=false;
btnEditar.Enabled:=false;
BtnExcluir.Enabled:=false;
BtnNovo.Enabled:=true;
end;

procedure TFrmCadTurma.BtnSalvarClick(Sender: TObject);
begin
dm.Q_Turma.Post;
BtnCancelar.Enabled:=false;
BtnSalvar.Enabled:=false;
btnEditar.Enabled:=false;
BtnExcluir.Enabled:=false;
BtnNovo.Enabled:=true;
end;

procedure TFrmCadTurma.BtnNovoClick(Sender: TObject);
begin
dm.Q_Turma.Insert;
dm.Q_Turmapasta.Value:=0;
BtnCancelar.Enabled:=true;
BtnSalvar.Enabled:=true;
btnEditar.Enabled:=false;
BtnExcluir.Enabled:=false;
BtnNovo.Enabled:=false;
end;

procedure TFrmCadTurma.btnEditarClick(Sender: TObject);
begin
dm.Q_Turma.Edit;
BtnCancelar.Enabled:=true;
BtnSalvar.Enabled:=true;
btnEditar.Enabled:=false;
BtnExcluir.Enabled:=false;
BtnNovo.Enabled:=false;
end;

procedure TFrmCadTurma.DBGrid1CellClick(Column: TColumn);
begin
BtnCancelar.Enabled:=false;
BtnSalvar.Enabled:=false;
btnEditar.Enabled:=true;
BtnExcluir.Enabled:=true;
BtnNovo.Enabled:=false;
end;

end.
