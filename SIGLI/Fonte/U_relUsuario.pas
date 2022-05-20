unit U_relUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, RpCon, RpConDS, RpBase,
  RpSystem, RpDefine, RpRave;

type
  TFRmrelaluno = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    DSRelusu: TRvDataSetConnection;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRmrelaluno: TFRmrelaluno;

implementation

uses U_DM;

{$R *.dfm}

procedure TFRmrelaluno.FormActivate(Sender: TObject);
begin
dm.Q_TurmaAluno.Open;
dm.Q_Turma.Open;
end;

procedure TFRmrelaluno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.Q_Turma.Open;
end;

procedure TFRmrelaluno.BitBtn1Click(Sender: TObject);
begin
dm.Q_TurmaAluno.Close;
dm.Q_TurmaAluno.Parameters.ParamByName('turma').Value:=dm.Q_TurmaCODTurma.Value;
dm.Q_TurmaAluno.Open;
RvProject1.Execute;
end;

end.
