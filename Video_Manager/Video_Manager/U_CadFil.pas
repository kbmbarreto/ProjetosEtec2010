unit U_CadFil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask;

type
  TFrmCadFil = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFil: TFrmCadFil;

implementation

uses U_DM;

{$R *.dfm}

procedure TFrmCadFil.FormActivate(Sender: TObject);
begin
DM.ADOQrCadFil.Open;
dm.ADOQrListCat.open;
end;

procedure TFrmCadFil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.ADOQrCadFil.close;
dm.ADOQrListCat.close;
end;

end.
