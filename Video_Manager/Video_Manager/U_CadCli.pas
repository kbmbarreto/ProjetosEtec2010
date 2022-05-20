unit U_CadCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons;

type
  TFrmCadCli = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    BtBtnsalvar: TBitBtn;
    BtBtnCancelar: TBitBtn;
    BtBtnVisualizar: TBitBtn;
    BtBtnNovo: TBitBtn;
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtBtnCancelarClick(Sender: TObject);
    procedure BtBtnsalvarClick(Sender: TObject);
    procedure BtBtnNovoClick(Sender: TObject);
    procedure BtBtnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCli: TFrmCadCli;

implementation

uses U_dm, U_VisCli;

{$R *.dfm}

procedure TFrmCadCli.DBEdit3Exit(Sender: TObject);
begin
if dm.ADOQryCadCliNOME.Value = '' then
begin
Application.MessageBox('Usuário não pode ser vazio !','Atenção',MB_ICONINFORMATION);
DBEdit1.SetFocus;
end;
end;

procedure TFrmCadCli.FormActivate(Sender: TObject);
begin
DM.ADOQryCadCli.Open;
end;

procedure TFrmCadCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.ADOQryCadCli.Close;
end;

procedure TFrmCadCli.BtBtnCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFrmCadCli.BtBtnsalvarClick(Sender: TObject);
begin
dm.ADOQryCadCli.post;
DM.ADOQryCadCli.Refresh;
close;
end;

procedure TFrmCadCli.BtBtnNovoClick(Sender: TObject);
begin
dm.ADOQryCadCli.Insert;
  DBEdit3.SetFocus;
  DBEdit1.clear;


end;

procedure TFrmCadCli.BtBtnVisualizarClick(Sender: TObject);
begin
try
FrmVisCli:= TFrmVisCli.Create(self);
FrmVisCli.ShowModal;
finally
FrmVisCli.Release;
end;
end;

end.
