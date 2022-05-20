object frmCarregando: TfrmCarregando
  Left = 213
  Top = 239
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'frmCarregando'
  ClientHeight = 505
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ShockwaveFlash1: TShockwaveFlash
    Left = 0
    Top = 0
    Width = 751
    Height = 505
    Align = alClient
    TabOrder = 0
    ControlData = {
      67556655100700009E4D00003134000008000200000000000800000000000800
      0000000008000E000000570069006E0064006F00770000000B00FFFF0B00FFFF
      08000A0000004800690067006800000008000200000000000B00FFFF08000000
      00000800020000000000080010000000530068006F00770041006C006C000000
      0B0000000B000000080002000000000008000000000008000200000000000D00
      000000000000000000000000000000000B0001000B0000000800000000000300
      0000000008000800000061006C006C00000008000C000000660061006C007300
      65000000}
  end
  object autooo: TTimer
    Interval = 2000
    OnTimer = autoooTimer
    Left = 112
    Top = 40
  end
end
