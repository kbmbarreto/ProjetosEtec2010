unit U_ConFil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFrmConFil = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    EdtNomeFilme: TEdit;
    Reservado: TLabel;
    EdtReservado: TEdit;
    Label2: TLabel;
    EdtDiretor: TEdit;
    BtBtnPesquisar: TBitBtn;
    BtBtnImprimir: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConFil: TFrmConFil;

implementation

{$R *.dfm}

end.
