unit U_Manutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ScktComp, ExtCtrls, Buttons;

type
  TFrmManutencao = class(TForm)
    ClientSocket1: TClientSocket;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManutencao: TFrmManutencao;

implementation

uses U_DM, U_inicio, U_Login;

{$R *.dfm}

procedure TFrmManutencao.FormActivate(Sender: TObject);
begin
dm.Q_MicroLog.Close;
dm.Q_MicroLog.Parameters.ParamByName('lab').Value:=lab;
dm.Q_MicroLog.Open;


end;

procedure TFrmManutencao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.Q_MicroLog.Close;

end;

procedure TFrmManutencao.Button11Click(Sender: TObject);
begin
dm.Q_manutecao.Close;
dm.Q_manutecao.Parameters.ParamByName('plab').Value:=lab;
dm.Q_manutecao.Parameters.ParamByName('st').Value:='livre';
dm.Q_manutecao.Open;
while not (dm.Q_manutecao.Eof) do
begin
ClientSocket1.Address :=dm.Q_manutecaoIP.Value;
ClientSocket1.Active := True;
 ClientSocket1.Socket.Sendtext('desliga');
 ClientSocket1.Active := false;
dm.Q_manutecao.Next;
 end;
dm.Q_manutecao.close;
 end;

procedure TFrmManutencao.Button12Click(Sender: TObject);
begin
dm.Q_manutecao.Close;
dm.Q_manutecao.Parameters.ParamByName('plab').Value:=lab;
dm.Q_manutecao.Parameters.ParamByName('st').Value:='livre';
dm.Q_manutecao.Open;
while not (dm.Q_manutecao.Eof) do
begin
ClientSocket1.Address :=dm.Q_manutecaoIP.Value;
ClientSocket1.Active := True;
 ClientSocket1.Socket.Sendtext('reinicia');
 ClientSocket1.Active := false;
dm.Q_manutecao.Next;
 end;
dm.Q_manutecao.close;

end;

procedure TFrmManutencao.Button13Click(Sender: TObject);
begin
dm.Q_manutecao.Close;
dm.Q_manutecao.Parameters.ParamByName('plab').Value:=lab;
dm.Q_manutecao.Parameters.ParamByName('st').Value:='livre';
dm.Q_manutecao.Open;
while not (dm.Q_manutecao.Eof) do
begin
ClientSocket1.Address :=dm.Q_manutecaoIP.Value;
ClientSocket1.Active := True;
 ClientSocket1.Socket.Sendtext('logoof');
 ClientSocket1.Active := false;
dm.Q_manutecao.Next;
 end;
dm.Q_manutecao.close;

end;

procedure TFrmManutencao.Button1Click(Sender: TObject);
begin
 ClientSocket1.Socket.Sendtext('btesco');
end;

procedure TFrmManutencao.Button2Click(Sender: TObject);
begin
   ClientSocket1.Socket.Sendtext('btapa');
end;

procedure TFrmManutencao.Button5Click(Sender: TObject);
begin
 ClientSocket1.Socket.Sendtext('iniesco');
end;

procedure TFrmManutencao.Button6Click(Sender: TObject);
begin
 ClientSocket1.Socket.Sendtext('iniapa');
end;

procedure TFrmManutencao.Button4Click(Sender: TObject);
begin
 ClientSocket1.Socket.Sendtext('icoesco');
end;

procedure TFrmManutencao.Button3Click(Sender: TObject);
begin
 ClientSocket1.Socket.Sendtext('icoapa');
end;

procedure TFrmManutencao.Button17Click(Sender: TObject);
begin
ClientSocket1.Active :=false;
end;

procedure TFrmManutencao.Button10Click(Sender: TObject);
begin
close;
end;

procedure TFrmManutencao.BitBtn1Click(Sender: TObject);
begin
dm.Q_manutecao.Close;
dm.Q_manutecao.Parameters.ParamByName('plab').Value:=lab;
dm.Q_manutecao.Parameters.ParamByName('st').Value:='Ativo';
dm.Q_manutecao.Open;
while not (dm.Q_manutecao.Eof) do
begin
ClientSocket1.Address :=dm.Q_manutecaoIP.Value;
ClientSocket1.Active := True;
 ClientSocket1.Socket.Sendtext('intebloc');
 ClientSocket1.Active := false;
dm.Q_manutecao.Next;
 end;
dm.Q_manutecao.close;
end;

procedure TFrmManutencao.BitBtn2Click(Sender: TObject);
begin
dm.Q_manutecao.Close;
dm.Q_manutecao.Parameters.ParamByName('plab').Value:=lab;
dm.Q_manutecao.Parameters.ParamByName('st').Value:='Ativo';
dm.Q_manutecao.Open;
while not (dm.Q_manutecao.Eof) do
begin
ClientSocket1.Address :=dm.Q_manutecaoIP.Value;
ClientSocket1.Active := True;
 ClientSocket1.Socket.Sendtext('intevolta');
 ClientSocket1.Active := false;
dm.Q_manutecao.Next;
 end;
dm.Q_manutecao.close;
end;

procedure TFrmManutencao.BitBtn3Click(Sender: TObject);
begin
dm.Q_manutecao.Close;
dm.Q_manutecao.Parameters.ParamByName('plab').Value:=lab;
dm.Q_manutecao.Parameters.ParamByName('st').Value:='Ativo';
dm.Q_manutecao.Open;
while not (dm.Q_manutecao.Eof) do
begin
ClientSocket1.Address :=dm.Q_manutecaoIP.Value;
ClientSocket1.Active := True;
 ClientSocket1.Socket.Sendtext('monitor');
 ClientSocket1.Active := false;
dm.Q_manutecao.Next;
 end;
dm.Q_manutecao.close;
end;

procedure TFrmManutencao.BitBtn5Click(Sender: TObject);
begin
dm.Q_manutecao.Close;
dm.Q_manutecao.Parameters.ParamByName('plab').Value:=lab;
dm.Q_manutecao.Parameters.ParamByName('st').Value:='Ativo';
dm.Q_manutecao.Open;
while not (dm.Q_manutecao.Eof) do
begin
ClientSocket1.Address :=dm.Q_manutecaoIP.Value;
ClientSocket1.Active := True;
 ClientSocket1.Socket.Sendtext('desbloc');
 ClientSocket1.Active := false;
dm.Q_manutecao.Next;
 end;
dm.Q_manutecao.close;
end;

procedure TFrmManutencao.BitBtn4Click(Sender: TObject);
begin
dm.Q_manutecao.Close;
dm.Q_manutecao.Parameters.ParamByName('plab').Value:=lab;
dm.Q_manutecao.Parameters.ParamByName('st').Value:='Ativo';
dm.Q_manutecao.Open;
while not (dm.Q_manutecao.Eof) do
begin
ClientSocket1.Address :=dm.Q_manutecaoIP.Value;
ClientSocket1.Active := True;
 ClientSocket1.Socket.Sendtext('btbloqueio');
 ClientSocket1.Active := false;
dm.Q_manutecao.Next;
 end;
dm.Q_manutecao.close;
end;

end.
