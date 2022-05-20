unit U_pausa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls,WinSock, Grids, DBGrids,DB,
  WinSkinData,Registry;


type
  TFRMPAUSA = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    Timer1: TTimer;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormHide(Sender: TObject);
    procedure desabilitarwinkey(ativa:Boolean);
    procedure FormClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FPodeFechar: boolean; 
  public
    { Public declarations }


  end;

var
  FRMPAUSA: TFRMPAUSA;
 id1: integer; 
const
MOD_ALT = 1;
 
    SISTEMA = 'software\Microsoft\Windows\CurrentVersion\Policies\System';
  EXPLORER = 'Software\Microsoft\Windows\CurrentVersion\Policies\Explorer';
  NETWORK = 'Software\Microsoft\Windows\CurrentVersion\Policies\Network';
  UNINSTALL = 'Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall';
  DOS = 'Software\Policies\Microsoft\Windows\System';

implementation

uses U_carregar;



{$R *.dfm}



procedure TFRMPAUSA.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
CanClose := FPodeFechar;
end;

procedure TFRMPAUSA.FormHide(Sender: TObject);
begin
 ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_SHOWNORMAL);
 UnRegisterHotKey(Handle, id1);
end;

procedure TFRMPAUSA.desabilitarwinkey(Ativa: Boolean);
var
  reg: TRegistry;
  HexBuf: array[0..23] of Byte;
  i: Integer;
begin
  reg := TRegistry.Create;
  try
    for i:=0 to 23 do
      HexBuf[i] := $00;
    HexBuf[8] := $03;
    HexBuf[14] := $5B;
    HexBuf[15] := $E0;
    HexBuf[18] := $5C;
    HexBuf[19] := $E0;

    reg.RootKey := HKEY_LOCAL_MACHINE;
    reg.OpenKey('SYSTEM\CurrentControlSet\Control\Keyboard Layout', True);
    if Ativa then
      reg.WriteBinaryData('Scancode Map', HexBuf, 24)
    else
      reg.DeleteValue('Scancode Map');
    reg.CloseKey;
  finally
    FreeAndNil(reg);
  end;
end;

procedure TFRMPAUSA.FormClick(Sender: TObject);
begin
 ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_HIDE) ;
end;

procedure TFRMPAUSA.BitBtn1Click(Sender: TObject);
begin
FPodeFechar := true;
Close;
end;

procedure TFRMPAUSA.FormShow(Sender: TObject);
begin
ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_HIDE);
end;

procedure TFRMPAUSA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Timer1.Enabled:=false;
end;

end.
