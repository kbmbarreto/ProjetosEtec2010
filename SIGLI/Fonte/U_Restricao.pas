unit U_Restricao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TFrmRestricao = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Deselecionar: TBitBtn;
    Selecionar: TBitBtn;
    Salvar: TBitBtn;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    r11: TCheckBox;
    r10: TCheckBox;
    r9: TCheckBox;
    r8: TCheckBox;
    r7: TCheckBox;
    r6: TCheckBox;
    r5: TCheckBox;
    r4: TCheckBox;
    r3: TCheckBox;
    r2: TCheckBox;
    R1: TCheckBox;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    r25: TCheckBox;
    r23: TCheckBox;
    r21: TCheckBox;
    r22: TCheckBox;
    r20: TCheckBox;
    r19: TCheckBox;
    r18: TCheckBox;
    r17: TCheckBox;
    r16: TCheckBox;
    r15: TCheckBox;
    r14: TCheckBox;
    r13: TCheckBox;
    r12: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalvarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRestricao: TFrmRestricao;

implementation

uses U_DM, U_Login;

{$R *.dfm}

procedure TFrmRestricao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FrmRestricao.Release;
FrmRestricao:=nil;
end;

procedure TFrmRestricao.SalvarClick(Sender: TObject);
begin
if r1.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=1;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=1;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;

//---------------------------------------

 if r2.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=2;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=2;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;

//---------------------------------------------------
if r3.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=3;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=3;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;


//--------------------------------------------------------

if r4.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=4;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=4;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=4;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;

//---------------------------------------------------------

if r5.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=5;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
  dm.Q_FilterRestrStatus.Value:=4;
  dm.Q_FilterRestr.Post;
  dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=5;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
 //----------------------------------------------------------
 if r6.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=6;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=6;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//------------------------------------------------------------

if r7.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=7;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=7;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//-----------------------------------------------------------
if r8.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=8;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=8;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//-----------------------------------------------------------

if r9.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=9;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=9;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//------------------------------------------------------------
if r10.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=10;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=10;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//------------------------------------------------------------
if r11.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=11;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=11;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
 //------------------------------------------------------
 if r12.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=12;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=12;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;

//-----------------------------------------------------------
if r13.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=13;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=13;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;


//-----------------------------------------------------------

if r14.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=14;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=14;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;


 //---------------------------------------------------------

 if r15.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=15;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=15;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;

//-----------------------------------------------------------
if r16.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=16;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=16;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
 //-----------------------------------------------------------
 if r17.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=17;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=17;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;

 //------------------------------------------------------------
 if r18.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=18;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=18;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;

//----------------------------------------------------------

if r19.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=19;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=19;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//----------------------------------------------------------
if r20.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=20;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=20;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//-------------------------------------------------------------
if r21.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=21;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=21;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;

//-----------------------------------------------------
if r22.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=22;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=22;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//------------------------------------------------------------
if r23.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=23;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=23;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//-----------------------------------------------------------
if r23.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=23;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=23;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
   if r25.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=25;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=25;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//-----------------------------------------------------------
{if r24.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=24;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=24;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//-----------------------------------------------------------
if r25.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=25;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=25;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//----------------------------------------------------------
if r26.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=26;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=26;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//---------------------------------------------------------

if r27.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=27;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=27;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//------------------------------------------------------------
{if r28.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=28;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=28;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//-----------------------------------------------------------
if r29.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=29;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=29;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;
//-----------------------------------------------------------
if r30.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=30;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=30;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;


 //-----------------------------------------------------------
 {if r31.Checked then
begin

  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=31;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=1;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
end
else
begin
  dm.Q_FilterRestr.Parameters.ParamByName('cod').Value:=31;
  dm.Q_FilterRestr.Parameters.ParamByName('la').Value:=Lab;
  dm.Q_FilterRestr.Parameters.ParamByName('login').Value:=usuario;
  dm.Q_FilterRestr.Open;
  dm.Q_FilterRestr.Edit;
   dm.Q_FilterRestrStatus.Value:=0;
   dm.Q_FilterRestr.Post;
   dm.Q_FilterRestr.Close;
   end;  }
  Application.MessageBox('Restrições salvas','Aviso... ',MB_OK);
end;

procedure TFrmRestricao.BitBtn2Click(Sender: TObject);
begin
r1.Checked:=false;
r2.Checked:=false;
r3.Checked:=false;
r4.Checked:=false;
r5.Checked:=false;
r6.Checked:=false;
r7.Checked:=false;
r8.Checked:=false;
r9.Checked:=false;
r10.Checked:=false;
r11.Checked:=false;
r12.Checked:=false;
r13.Checked:=false;
r14.Checked:=false;
r15.Checked:=false;
r16.Checked:=false;
r17.Checked:=false;
r18.Checked:=false;
r19.Checked:=false;
r20.Checked:=false;
r21.Checked:=false;
r22.Checked:=false;
r23.Checked:=false;
r25.Checked:=false;
{24.Checked:=false;

r26.Checked:=false;
r27.Checked:=false;
r28.Checked:=false;
r29.Checked:=false;
r30.Checked:=false;
r31.Checked:=false; }

end;

procedure TFrmRestricao.SelecionarClick(Sender: TObject);
begin
r1.Checked:=true;
r2.Checked:=true;
r3.Checked:=true;
r4.Checked:=true;
r5.Checked:=true;
r6.Checked:=true;
r7.Checked:=true;
r8.Checked:=true;
r9.Checked:=true;
r10.Checked:=true;
r11.Checked:=true;
r12.Checked:=true;
r13.Checked:=true;
r14.Checked:=true;
r15.Checked:=true;
r16.Checked:=true;
r17.Checked:=true;
r18.Checked:=true;
r19.Checked:=true;
r20.Checked:=true;
r21.Checked:=true;
r22.Checked:=true;
r23.Checked:=true;
r25.Checked:=true;
{24.Checked:=true;

r26.Checked:=true;
r27.Checked:=true;
r28.Checked:=true;
r29.Checked:=true;
r30.Checked:=true;
r31.Checked:=true;  }
end;

end.
