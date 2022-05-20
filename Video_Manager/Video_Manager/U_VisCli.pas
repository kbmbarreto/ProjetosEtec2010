unit U_VisCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TFrmVisCli = class(TForm)
    EdtLocalizar: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtLocalizarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVisCli: TFrmVisCli;

implementation

uses U_DM;

{$R *.dfm}

procedure TFrmVisCli.FormActivate(Sender: TObject);
begin
dm.ADOQryCadCli.Open;
end;

procedure TFrmVisCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.ADOQryCadCli.Close;
end;

procedure TFrmVisCli.EdtLocalizarChange(Sender: TObject);
begin
dm.ADOQryCadCli.close;
dm.ADOQryCadCli.SQL.clear;
dm.ADOQryCadCli.SQL.Add('select * from clientes where nome like ' +QuotedStr(EdtLocalizar.Text+'%'));
dm.ADOQryCadCli.Open;
end;

end.
