object FrmAltSenha: TFrmAltSenha
  Left = 241
  Top = 167
  Width = 317
  Height = 232
  Caption = 'VideoLoc Manager - Alterar Senha'
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object LblSenhaAtual: TLabel
    Left = 16
    Top = 48
    Width = 75
    Height = 16
    Caption = 'Senha Atual :'
  end
  object LblNovaSenha: TLabel
    Left = 16
    Top = 80
    Width = 73
    Height = 16
    Caption = 'Nova Senha :'
  end
  object LblConfSenha: TLabel
    Left = 16
    Top = 112
    Width = 100
    Height = 16
    Caption = 'Confirmar Senha :'
  end
  object LblUsuario: TLabel
    Left = 16
    Top = 16
    Width = 49
    Height = 16
    Caption = 'Usu'#225'rio :'
  end
  object EdtSenhaAtual: TEdit
    Left = 120
    Top = 40
    Width = 121
    Height = 24
    PasswordChar = '*'
    TabOrder = 0
  end
  object EdtNovaSenha: TEdit
    Left = 120
    Top = 72
    Width = 121
    Height = 24
    PasswordChar = '*'
    TabOrder = 1
  end
  object EdtConfSenha: TEdit
    Left = 120
    Top = 104
    Width = 121
    Height = 24
    PasswordChar = '*'
    TabOrder = 2
  end
  object EdtUsuario: TEdit
    Left = 120
    Top = 8
    Width = 121
    Height = 24
    TabOrder = 3
  end
  object BtBtnSalvar: TBitBtn
    Left = 40
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BtBtnSalvarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
  object BtBtnCancelar: TBitBtn
    Left = 160
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BtBtnCancelarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
  end
end
