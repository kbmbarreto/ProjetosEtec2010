unit U_CadCat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFrmCadCat = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCat: TFrmCadCat;

implementation

uses U_DM;

{$R *.dfm}

procedure TFrmCadCat.FormActivate(Sender: TObject);
begin
DM.ADOQryCadCat.Open;
end;

procedure TFrmCadCat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.ADOQryCadCat.Close;
end;

end.
