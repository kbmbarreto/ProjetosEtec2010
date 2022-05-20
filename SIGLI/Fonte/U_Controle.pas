unit U_Controle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  TFrmControle = class(TForm)
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmControle: TFrmControle;

implementation

uses U_DM;

{$R *.dfm}

procedure TFrmControle.FormActivate(Sender: TObject);
begin
DM.Q_FilterMicro.Close;
//DM.Q_FilterMicro.Parameters.ParamByName('Plab').Value:=lab;
dm.Q_FilterMicro.Open;
end;

procedure TFrmControle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.Q_FilterMicro.Close;
end;

procedure TFrmControle.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if dm.Q_FilterMicroStatus.Value='Ativo'then
begin
DBGrid1.Canvas.Brush.Color:=$0009BB4B;
DBGrid1.Canvas.Font.Style:=[fsBold];
DBGrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end
else
begin
DBGrid1.Canvas.Brush.Color:=clBlue;
DBGrid1.Canvas.Font.Style:=[fsBold];
DBGrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;
end;


end.
