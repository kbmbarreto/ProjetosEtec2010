unit U_AltUsu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Grids, DBGrids;

type
  TFrmAltUsu = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Parametro: TRadioGroup;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Panel3: TPanel;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BtBtnSalvar: TBitBtn;
    btBtncancelar: TBitBtn;
    BtBtnEditar: TBitBtn;
    BtbtnEcluir: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BtbtnEcluirClick(Sender: TObject);
    procedure BtBtnEditarClick(Sender: TObject);
    procedure btBtncancelarClick(Sender: TObject);
    procedure BtBtnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAltUsu: TFrmAltUsu;

implementation

uses U_DM;

{$R *.dfm}

procedure TFrmAltUsu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmaltusu.Release;
frmaltusu:=nil;

dm.Q_Usuario.close;
dm.Q_Usuario.SQL.Clear;
dm.Q_Usuario.SQL.Add('select * from usuario');
dm.Q_Usuario.Open;
dm.Q_Usuario.Close;
end;

procedure TFrmAltUsu.FormActivate(Sender: TObject);
begin
dm.Q_Usuario.Open;
end;

procedure TFrmAltUsu.DBEdit7Change(Sender: TObject);
begin
   if DBEdit7.Text='3' then
       Panel3.Enabled:=true
       else
       Panel3.Enabled:=false;
end;

procedure TFrmAltUsu.Edit1Change(Sender: TObject);
begin
if Parametro.ItemIndex=0 then
begin
dm.Q_Usuario.close;
dm.Q_Usuario.SQL.Clear;
dm.Q_Usuario.SQL.Add('select * from usuario where Login like '+ QuotedStr(Edit1.Text+'%'));
dm.Q_Usuario.Open;
end;
if Parametro.ItemIndex=1 then
begin
dm.Q_Usuario.close;
dm.Q_Usuario.SQL.Clear;
dm.Q_Usuario.SQL.Add('select * from usuario where Nome like '+ QuotedStr(Edit1.Text+'%'));
dm.Q_Usuario.Open;
end;


end;

procedure TFrmAltUsu.BtbtnEcluirClick(Sender: TObject);
  var
  resp:integer;
begin
resp:=Application.MessageBox('Deseja Realmete apagar registro ?','Apagando',36);
if resp = Idyes then
begin
DM.Q_Usuario.Delete;
btBtncancelar.Enabled:=false;
BtbtnEcluir.Enabled:=true;
BtBtnEditar.Enabled:=true;
BtBtnSalvar.Enabled:=false;
end;
 end;
procedure TFrmAltUsu.BtBtnEditarClick(Sender: TObject);
begin
dm.Q_Usuario.Edit;
btBtncancelar.Enabled:=true;
BtbtnEcluir.Enabled:=false;
BtBtnEditar.Enabled:=false;
BtBtnSalvar.Enabled:=true;
end;

procedure TFrmAltUsu.btBtncancelarClick(Sender: TObject);
begin
dm.Q_Usuario.Cancel;
btBtncancelar.Enabled:=false;
BtbtnEcluir.Enabled:=true;
BtBtnEditar.Enabled:=true;
BtBtnSalvar.Enabled:=false;
end;

procedure TFrmAltUsu.BtBtnSalvarClick(Sender: TObject);
begin
dm.Q_Usuario.Post;
btBtncancelar.Enabled:=false;
BtbtnEcluir.Enabled:=true;
BtBtnEditar.Enabled:=true;
BtBtnSalvar.Enabled:=false;
end;

end.
