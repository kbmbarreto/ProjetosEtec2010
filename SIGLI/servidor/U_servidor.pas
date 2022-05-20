unit U_servidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, DB, ADODB, StdCtrls, Buttons, Grids, DBGrids,Shellapi ;

type
  TForm1 = class(TForm)
    Q_pastas: TADOQuery;
    DS_pastas: TDataSource;
    ADOConnection: TADOConnection;
    Q_Usuario: TADOQuery;
    DS_Usuario: TDataSource;
    DBGrid1: TDBGrid;
    Q_UsuarioLogin: TWideStringField;
    Q_UsuarioSenha: TWideStringField;
    Q_UsuarioNome: TWideStringField;
    Q_UsuarioCod_Nivel: TIntegerField;
    Q_UsuarioCodTurma: TIntegerField;
    Q_UsuarioRa: TWideStringField;
    Q_UsuarioIdade: TWideStringField;
    ServerSocket1: TServerSocket;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Q_pastasTurma: TIntegerField;
    Q_pastasst: TIntegerField;
    Q_pastasCod_pasta: TAutoIncField;
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
  var
  Dir,resp,turma,usu: String;
  begin
resp:=Socket.ReceiveText;
if resp='criarpasta' then
begin
ShowMessage('ola');
Q_Usuario.Close;
Q_Usuario.Parameters.ParamByName('cod').Value:=Q_pastasTurma.Value;
Q_Usuario.open;
Q_pastas.Open;
Q_pastas.Edit;
Q_pastasst.Value:=1;
Q_pastas.Post;
Q_pastas.Close;
while not (Q_Usuario.Eof) do
begin
usu:=Q_UsuarioLogin.AsString;
turma:=Q_UsuarioCodTurma.AsString;
dir:=('c:\sigle\diretorio\'+turma+'\'+usu);
ForceDirectories(dir);
 //ShellExecute(0,PChar('net.exe'),PChar(' share '+usu + dir+),nil, nil, SW_HIDE);
 //ShellExecute(0,PChar('net.exe'),PChar(' share '+usu+'' +''+dir+''), nil, nil, SW_HIDE);


//WinExec('cmd /c net share '+usu+'='+dir,HIDE_WINDOW);

Q_Usuario.Next;


end;
end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
   var
  Dir,resp,turma,usu: String;
  begin



Q_Usuario.Close;
Q_Usuario.Parameters.ParamByName('cod').Value:=Q_pastasTurma.Value;
Q_Usuario.open;

usu:=Q_UsuarioLogin.Value;
turma:=Q_UsuarioCodTurma.AsString;
dir:=('c:\sigle\diretorio\'+turma+'\'+usu);
Edit1.Text:=usu;

//ShellExecute(0,PChar('net.exe'),PChar(' share '+usu +dir), nil, nil, SW_HIDE);
//ShellExecute(0,PChar('net.exe'),PChar(' share '+usu + ''+dir+''),nil, nil, SW_HIDE);


WinExec(pchar('cmd /c net share'+usu+'='+dir),HIDE_WINDOW);





   end;

end.
