unit U_consulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls;

type
  TFrmBusca = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGUSUARIO: TDBGrid;
    TabSheet2: TTabSheet;
    DBGLaboratorio: TDBGrid;
    TabSheet3: TTabSheet;
    DBGMicro: TDBGrid;
    TabSheet4: TTabSheet;
    DBGTURMA: TDBGrid;
    EDTUsuario: TEdit;
    EdtLaboratorio: TEdit;
    EDTMicro: TEdit;
    EDTTurma: TEdit;
    Usuario: TRadioGroup;
    laboratorio: TRadioGroup;
    Micro: TRadioGroup;
    turma: TRadioGroup;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure EDTUsuarioChange(Sender: TObject);
    procedure EdtLaboratorioChange(Sender: TObject);
    procedure EDTMicroChange(Sender: TObject);
    procedure EDTTurmaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBusca: TFrmBusca;

implementation

uses U_DM;

{$R *.dfm}

procedure TFrmBusca.EDTUsuarioChange(Sender: TObject);
begin
if Usuario.ItemIndex=0 then
begin
dm.Q_Consultas.Close;
dm.Q_Consultas.SQL.Clear;
dm.Q_Consultas.SQL.Add('select *  from usuario where Cod_Nivel = 3 and  Login like '+QuotedStr(EDTUsuario.Text+'%' ));
dm.Q_Consultas.Open;
end ;
if Usuario.ItemIndex=1 then
begin
dm.Q_Consultas.Close;
dm.Q_Consultas.SQL.Clear;
dm.Q_Consultas.SQL.Add('select *  from usuario where Cod_Nivel = 3 and  nome like '+QuotedStr(EDTUsuario.Text+'%' ));
dm.Q_Consultas.Open;
end;
if Usuario.ItemIndex=2 then
begin
dm.Q_Consultas.Close;
dm.Q_Consultas.SQL.Clear;
dm.Q_Consultas.SQL.Add('select *  from usuario where Cod_Nivel = 3 and codturma like '+QuotedStr(EDTUsuario.Text+'%' ));
dm.Q_Consultas.Open;
end;
end;

procedure TFrmBusca.EdtLaboratorioChange(Sender: TObject);
begin
if laboratorio.ItemIndex=0 then
begin
dm.Q_Consultas.Close;
dm.Q_Consultas.SQL.Clear;
dm.Q_Consultas.SQL.Add('select *  from laboratorio where   codlab like '+QuotedStr(EDTlaboratorio.Text+'%' ));
dm.Q_Consultas.Open;
end;
if laboratorio.ItemIndex=1 then
begin
dm.Q_Consultas.Close;
dm.Q_Consultas.SQL.Clear;
dm.Q_Consultas.SQL.Add('select *  from laboratorio where   nomelab like '+QuotedStr(EDTlaboratorio.Text+'%' ));
dm.Q_Consultas.Open;
end;
end;

procedure TFrmBusca.EDTMicroChange(Sender: TObject);
begin
if Micro.ItemIndex=0 then
begin
dm.Q_Consultas.Close;
dm.Q_Consultas.SQL.Clear;
dm.Q_Consultas.SQL.Add('select *  from micro where   codmicro like '+QuotedStr(EDTmicro.Text+'%' ));
dm.Q_Consultas.Open;
end;
if Micro.ItemIndex=1 then
begin
dm.Q_Consultas.Close;
dm.Q_Consultas.SQL.Clear;
dm.Q_Consultas.SQL.Add('select *  from micro where   lab like '+QuotedStr(EDTmicro.Text+'%' ));
dm.Q_Consultas.Open;
end;

end;

procedure TFrmBusca.EDTTurmaChange(Sender: TObject);
begin
if turma.ItemIndex=0 then
begin
dm.Q_Consultas.Close;
dm.Q_Consultas.SQL.Clear;
dm.Q_Consultas.SQL.Add('select *  from turma where   turma like '+QuotedStr(EDTturma.Text+'%' ));
dm.Q_Consultas.Open;
end;
if turma.ItemIndex=1 then
begin
dm.Q_Consultas.Close;
dm.Q_Consultas.SQL.Clear;
dm.Q_Consultas.SQL.Add('select *  from turma where   periodo like '+QuotedStr(EDTturma.Text+'%' ));
dm.Q_Consultas.Open;
end;
end;

end.
