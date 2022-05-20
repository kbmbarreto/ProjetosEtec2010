unit U_CadLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, ExtCtrls, Mask;

type
  TFrmCadLab = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    PnlMIcro: TPanel;
    BtBtnCancelarMIc: TSpeedButton;
    Label3: TLabel;
    Label5: TLabel;
    BtBtnAdcMicro: TBitBtn;
    BtbtnSalvMicro: TBitBtn;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    BtBtnNovoLab: TBitBtn;
    BtbtnSalvar: TBitBtn;
    BtbtnCancelar: TSpeedButton;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Voltar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtBtnNovoLabClick(Sender: TObject);
    procedure BtBtnAdcMicroClick(Sender: TObject);
    procedure BtbtnSalvarClick(Sender: TObject);
    procedure BtbtnCancelarClick(Sender: TObject);
    procedure BtbtnSalvMicroClick(Sender: TObject);
    procedure BtBtnCancelarMIcClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure VoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadLab: TFrmCadLab;

implementation

uses U_DM, U_Login;

{$R *.dfm}

procedure TFrmCadLab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmCadLab.Release;
FrmCadLab:=nil;
dm.Q_Laboratorio.close;
dm.Q_Micro.close;
dm.Q_FilterMicro.Close;
end;

procedure TFrmCadLab.BtBtnNovoLabClick(Sender: TObject);
begin
dm.Q_Laboratorio.Insert;
DBEdit2.SetFocus;
BtbtnSalvar.Enabled:=true;
BtbtnCancelar.Enabled:=true;
BtBtnNovoLab.Enabled:=false;
end;

procedure TFrmCadLab.BtBtnAdcMicroClick(Sender: TObject);
begin
dm.Q_FilterMicro.close;
dm.Q_FilterMicro.Parameters.ParamByName('Plab').Value:=dm.Q_LaboratorioCodLAb.Value;
dm.Q_FilterMicro.open;
dm.Q_Micro.Insert;
dm.Q_MicroNomeMicro.Value:='MICRO';
dm.Q_MicroStatus.Value:='Inativo';
dm.Q_MicroLab.Value:=dm.Q_LaboratorioCodLAb.Value;
BtBtnAdcMicro.Enabled:=false;
BtbtnSalvMicro.Enabled:=true;
BtBtnCancelarMIc.Enabled:=true;

end;

procedure TFrmCadLab.BtbtnSalvarClick(Sender: TObject);
begin
dm.Q_Laboratorio.Post;
BtbtnSalvar.Enabled:=false;
BtbtnCancelar.Enabled:=false;
BtBtnNovoLab.Enabled:=true;
end;

procedure TFrmCadLab.BtbtnCancelarClick(Sender: TObject);
begin
dm.Q_Laboratorio.Cancel;
BtbtnSalvar.Enabled:=false;
BtbtnCancelar.Enabled:=false;
BtBtnNovoLab.Enabled:=true;
end;

procedure TFrmCadLab.BtbtnSalvMicroClick(Sender: TObject);
begin
dm.Q_Micro.Post;
BtBtnAdcMicro.Enabled:=true;
BtbtnSalvMicro.Enabled:=false;
BtBtnCancelarMIc.Enabled:=false;
end;

procedure TFrmCadLab.BtBtnCancelarMIcClick(Sender: TObject);
begin
begin
dm.Q_Micro.Cancel;
BtBtnAdcMicro.Enabled:=true;
BtbtnSalvMicro.Enabled:=false;
BtBtnCancelarMIc.Enabled:=false;
end;
end;
procedure TFrmCadLab.FormActivate(Sender: TObject);
begin
dm.Q_Laboratorio.Open;
dm.Q_Micro.Open;
end;

procedure TFrmCadLab.VoltarClick(Sender: TObject);
begin
FrmLogin.show;
FrmCadLab.Hide;
Voltar.Visible:=false;
end;

end.
