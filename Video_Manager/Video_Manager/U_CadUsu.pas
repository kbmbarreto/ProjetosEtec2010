unit U_CadUsu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, Grids, DBGrids;

type
  TFrmCadUsu = class(TForm)
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrmCadUsu.FormActivate(Sender: TObject);
begin
  dm.ADOQrCadUsu.Open;
end;

procedure TFrmCadUsu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.ADOQrCadUsu.close;
end;

end.
