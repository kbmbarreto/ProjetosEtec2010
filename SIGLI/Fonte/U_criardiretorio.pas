unit U_criardiretorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ScktComp, Mask, DBCtrls,
  ExtCtrls;

type
  TFrmCriaDire = class(TForm)
    ClientSocket1: TClientSocket;
    Label4: TLabel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Panel2: TPanel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    desconectar: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure Edit2Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure desconectarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCriaDire: TFrmCriaDire;

implementation

uses U_DM, DB;

{$R *.dfm}

procedure TFrmCriaDire.BitBtn1Click(Sender: TObject);
begin
ClientSocket1.Address :=Edit1.Text;

ClientSocket1.Active := true;
BitBtn1.Enabled:=false;
BitBtn2.Enabled:=true;
BitBtn3.Enabled:=true;
desconectar.Enabled:=true;




end;

procedure TFrmCriaDire.FormActivate(Sender: TObject);
begin
dm.Q_Turma.Open;
end;

procedure TFrmCriaDire.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.Q_Turma.close;
dm.Q_Turma.SQL.Clear;
dm.Q_Turma.SQL.Add('select * from turma' );
dm.Q_Turma.open;
dm.Q_Turma.Close;
FrmCriaDire.Release;
FrmCriaDire:=nil;;
end;

procedure TFrmCriaDire.BitBtn2Click(Sender: TObject);
begin
 ClientSocket1.Socket.Sendtext('criarpasta');
 dm.Q_Turma.Edit;
 dm.Q_Turmapasta.Value:=1;
 dm.Q_Turma.Post;


end;

procedure TFrmCriaDire.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
BitBtn2.Enabled:=true;
BitBtn3.Enabled:=true;
BitBtn1.Enabled:=false;
desconectar.Enabled:=true;
end;

procedure TFrmCriaDire.Edit2Change(Sender: TObject);
begin
dm.Q_Turma.close;
dm.Q_Turma.SQL.Clear;
dm.Q_Turma.SQL.Add('select * from turma where  turma like '+ QuotedStr(Edit2.Text+'%'));
dm.Q_Turma.open;
end;

procedure TFrmCriaDire.BitBtn3Click(Sender: TObject);
begin
 ClientSocket1.Socket.Sendtext('apagarpasta');
dm.Q_Turma.Edit;
 dm.Q_Turmapasta.Value:=3;
 dm.Q_Turma.Post;

end;

procedure TFrmCriaDire.desconectarClick(Sender: TObject);
begin
ClientSocket1.Active := false;
BitBtn1.Enabled:=true;
BitBtn2.Enabled:=false;
BitBtn3.Enabled:=false;
desconectar.Enabled:=false;
end;

end.
