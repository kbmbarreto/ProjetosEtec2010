unit U_relaLabXMicro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, RpCon, RpConDS, RpBase,
  RpSystem, RpDefine, RpRave, Buttons;

type
  TFrmRelLab = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    RvDataSetConnection2: TRvDataSetConnection;
    DBGrid2: TDBGrid;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelLab: TFrmRelLab;

implementation

uses U_DM;

{$R *.dfm}

procedure TFrmRelLab.FormActivate(Sender: TObject);
begin
dm.Q_Laboratorio.Open;
dm.Q_Data.close;
dm.Q_Data.Open;
dm.Q_Data.Insert;
dm.Q_DataData.Value:=date();
dm.Q_DataHora.Value:=time();
dm.Q_Data.Post;
end;

procedure TFrmRelLab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.Q_Laboratorio.Close;
dm.Q_Data.Delete;
dm.Q_Data.Close;
FrmRelLab.Release;
FrmRelLab:=nil;
end;

procedure TFrmRelLab.BitBtn1Click(Sender: TObject);
begin
dm.Q_FilterMicro.Close;
dm.Q_FilterMicro.Parameters.ParamByName('plab').Value:=dm.Q_LaboratorioCodLAb.Value;
dm.Q_FilterMicro.Open;
RvProject1.Execute;
end;

end.
