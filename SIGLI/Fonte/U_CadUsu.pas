unit U_CadUsu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Mask, DBCtrls, Buttons, Grids, DBGrids;

type
  TFrmCadUsu = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Usuario: TGroupBox;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    Label4: TLabel;
    Panel3: TPanel;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    BtBtnnovo: TBitBtn;
    BtbtnSalvar: TBitBtn;
    BtbtnCancelar: TSpeedButton;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtBtnnovoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtbtnSalvarClick(Sender: TObject);
    procedure BtbtnCancelarClick(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadUsu: TFrmCadUsu;

implementation

uses U_DM;

{$R *.dfm}

procedure TFrmCadUsu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmCadUsu.Release;
FrmCadUsu:=nil;
dm.Q_Usuario.Close;
end;

procedure TFrmCadUsu.BtBtnnovoClick(Sender: TObject);
begin
dm.Q_Usuario.Insert;
btbtnSAlvar.Enabled:=true;
btbtncancelar.Enabled:=true;
btbtnnovo.Enabled:=false;
end;

procedure TFrmCadUsu.FormActivate(Sender: TObject);
begin
dm.Q_Usuario.Open;
end;

procedure TFrmCadUsu.BtbtnSalvarClick(Sender: TObject);
begin
dm.Q_Usuario.Post;
btbtnSAlvar.Enabled:=false;
btbtncancelar.Enabled:=false;
btbtnnovo.Enabled:=true;
  end;
procedure TFrmCadUsu.BtbtnCancelarClick(Sender: TObject);
begin
dm.Q_Usuario.Cancel;
btbtnSAlvar.Enabled:=false;
btbtncancelar.Enabled:=false;
btbtnnovo.Enabled:=true;
end;

procedure TFrmCadUsu.DBEdit7Change(Sender: TObject);
begin
if dm.Q_UsuarioCod_Nivel.Value>=2 then
Panel3.Enabled:=false
else
Panel3.Enabled:=true;

end;

procedure TFrmCadUsu.DBRadioGroup1Click(Sender: TObject);
begin
if DBRadioGroup1.ItemIndex=2 then
Panel3.Enabled:=true ;
if DBRadioGroup1.ItemIndex=1 then
Panel3.Enabled:=FALSE;
if DBRadioGroup1.ItemIndex=0 then
Panel3.Enabled:=FALSE;
end;

end.
