object FrmCadUsu: TFrmCadUsu
  Left = 208
  Top = 99
  Width = 612
  Height = 473
  Caption = 'Cadastro de Usuario - SIGLI '#174
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 0
    Width = 585
    Height = 177
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 9
      Width = 561
      Height = 160
      DataSource = DM.DS_Usuario
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 184
    Width = 593
    Height = 241
    TabOrder = 1
    object Usuario: TGroupBox
      Left = 16
      Top = 8
      Width = 569
      Height = 225
      Caption = 'Cadastro de usuario :'
      TabOrder = 0
      object Label3: TLabel
        Left = 184
        Top = 16
        Width = 28
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit3
      end
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 26
        Height = 13
        Caption = 'Login'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 8
        Top = 56
        Width = 31
        Height = 13
        Caption = 'Senha'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 184
        Top = 56
        Width = 75
        Height = 13
        Caption = 'Confirme Senha'
        FocusControl = DBEdit2
      end
      object BtbtnCancelar: TSpeedButton
        Left = 240
        Top = 168
        Width = 89
        Height = 41
        Caption = 'Cancelar'
        Enabled = False
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          08000000000000040000120B0000120B0000000100000001000089130100DFC8
          B4000E0EB500D98B3B000E0EA7008181B100AC745C00B26919005F5FE200CE2C
          0000C5907F0057579200FFF7F4004242DB00E06A3000AB592800A4A4B300FFAF
          7B00F5775800B18E6D00EF4F2800EEEEEE008F381C002828C50000000000C474
          1F00FF9539007E7E9E00CAA99900D0D0E8009999FF00A05D5B00F7450000FF91
          6D007B7BFF00FF671200B82200009090A1009A6D3800ED935500F89E6D00CF48
          11002525E3007474CE001F1FBB00E5D1CB00A6643F00BF4E0D005252FF00BA89
          6200CD5C3F00A2A2E70090274200C4753A00FF9F520083406E00E6946A007979
          ED00FF74400021219700E37D5B00E9823100492C9500E7E7ED006666FF004242
          FF00E79A7800A91C00008383FF00E6DBD100F0400000D2AE9000BF6F1A009746
          2B001E1EE300DD340000BE6E3D00C05E2400A8677300D5B7AF007D7DE500C7C7
          D000C87D2F00BC663800D38D5A00BDBDC3007373FF00B6631400FF6A3900F9C4
          A000E47D4A00C24A2B00FAB27D0098682E009393C7001F1CA700E49A4500CB7C
          3C00F7F4F100CFA19400FF904D00EF9561003A3AD2006B6BF800FDA85000BD25
          0000A8381300E3764100FA6638009E250E00FF5B32008A8BFF00BDBDE700DBDB
          E200CB6D5E00403FF500FF9E75007474F500C77E6900AEAEC4002F2FFF00EF59
          1400ED993D0096687E000C0CB000CE3818008786DF00AB2E1500B65E2F00ECD7
          C300B54523006161EF00FD530700ABABFE00FF834E001918B700DB531600E379
          4400D76D3500B3B3D600FF86640096622100A5775100C0875B00D38D4E00B678
          4900D07C4E00BF351500C67929006565B0006B6BFF00A6511D00971F0700FF96
          51002020C900FFFFFF00F6EADD00DED2C5002F2FC400BFA68B002828AA00D3D3
          D700EB3C00004747E400BB6C2600F96E4D003422A000F59F5B0081424100B763
          2600B64F0A00D63100009C547100F5F0EB00E0C0A300F27C4C00A1A0CD00EAA0
          6000FF502B007979AD00B4624900EB6B3A00D5D5E8005A5AFF009797B0006121
          7000FFB681002C2CFE00FFAD59009B4A2000CF6C4500EFA271004A4AFF00F7A6
          7200EAE0D700B3622200A7692200CFBAA700C55C4000EC472500B4B4E500FF7C
          4300D8873C00FDA97000CD682D009C1600009595FF00F7F7F7006B6BD600A24B
          1900B0836000B1451900D7461E00B5B5CB0018189E00EAA448008484F8008C8C
          D700110EAC003838FF003233D600E38E3E003F2D9D00CB6648009B7141006D6D
          EE00F9A67800BB531F00BB756200E8895100FF8C6300CD390A00FF532E00D697
          6000E1694C00FA480000C3270000AE1E0000B5957200CFD0EE002828F300A165
          4A00FA872F00FF623200D27D6D00ADADD0001D1DD300F3EAE700BD642600BF9F
          83004A4AD6004D4DEE00D9CABA00EE925C00DA6C3A00FF7C5D009B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9BCF7177251B1B10A1629B9B9B9B9B9B9B9B9BCFC2
          629B9B9B9B9B9B9B9B9B9BA1955F7C020202043B0B559B9B9B9B9B9B9B45E0BD
          49061C2D629B9B9B9B9BF5A002F64A4ADC2A2A9A023BB8CF9B9B9B9B622657F8
          9898009816F19F9C9B8BDA1773BBBB8BA15EF041FB2CD6259B9B9B9B01C419C3
          6D5AA75A32826D98A85F66B7C078839B9B71DC41B7672C3B559B9B9B9F071997
          6A6DBEC1BABA5C383E175640C0DB73EF9BC8DBC0B756E1870B159B9B13079497
          D3CDCD7FDF42594F5F0822403041DBA3D0A34130405644FAD6519B9B8E485297
          E3CDCD434324933787D82240B730C07E512B30B7405644E17CB89B62E04852C3
          4D4343432424ECB99E44229640B7B7C8155E40409656227587B39BF7264852A4
          F8242469ECEC09B99E2256969696E1B6CF7756565656565687B39BC25D1952A4
          F8ECECEC0909ABB917569696962250CFCF5139442256566787059B458D195252
          A9E70909AB4B4B3487676767226F339B9B71D9CE4422568302779BFC8D195252
          C388AB4B4B4BA27DD6A34056441E709B9B3FB01E6F22560D5F719BC507945252
          0F3D4BA2A2464620B92C96226F851D9B9B157785CE4483872B9B9B9F07945252
          C3CA794646202020D43B6656CE85B69B9BCFD585CE2217A03F9B9BEE07945252
          52D17AF22384848423C6DA9E758570159B3FC81E67175F1FF79B9BD20E898989
          89895B8035037A1A1A1AE4A6870DE1395039836687A6F4FE2D9B628EA5FFFFFF
          FFFFFFFF12EA323280D7BCB17BDEDA878787DA3EACAF86B50A9BAD2EFF8C8C8C
          8C8C8C8C8C8C8C8C1280BCBCBCA7764E4E4E72AFC93A3A6CB4CFF72E8C212121
          2121212121212121213C52BC363699646486C93A3A58F3F35BF7F72E21747474
          74747474747474747474536036646486C93A3A58F3F3E8E8D42D628E28111111
          11111111111111111111E25360689964C958F3F3E8E8E8E8C7639B13BF111111
          1111111111111111111111BF4C4C3561CADD64C958F3E8E814639BC58FCB5C11
          1111111111111111111111111111C1BF3892530FC394DDDD0FC29BADD2546528
          C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C12827AE622D4F4FF79B9B9B62C5F931
          914C355AE527272765656565FDFDFDFDFDE589819B9B9B9B9B9B9B9B9B9B9B9B
          AD45C5F9319153F8CC8A6B6B6B6B5A5A6B0E8A629B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9BCFADC201478FA9AA2F29292929909B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9BAD81AEE961E99C9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B}
        OnClick = BtbtnCancelarClick
      end
      object DBEdit3: TDBEdit
        Left = 184
        Top = 32
        Width = 153
        Height = 21
        DataField = 'Nome'
        DataSource = DM.DS_Usuario
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 32
        Width = 169
        Height = 21
        DataField = 'Login'
        DataSource = DM.DS_Usuario
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 72
        Width = 169
        Height = 21
        DataField = 'Senha'
        DataSource = DM.DS_Usuario
        TabOrder = 2
      end
      object Edit1: TEdit
        Left = 184
        Top = 72
        Width = 153
        Height = 21
        TabOrder = 3
      end
      object Panel3: TPanel
        Left = 344
        Top = 8
        Width = 217
        Height = 153
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 4
        object GroupBox3: TGroupBox
          Left = 8
          Top = 8
          Width = 201
          Height = 137
          Caption = 'Aluno'
          TabOrder = 0
          object Label10: TLabel
            Left = 8
            Top = 16
            Width = 30
            Height = 13
            Caption = 'Turma'
          end
          object Label9: TLabel
            Left = 16
            Top = 60
            Width = 27
            Height = 13
            Caption = 'Idade'
            FocusControl = DBEdit4
          end
          object Label11: TLabel
            Left = 24
            Top = 36
            Width = 14
            Height = 13
            Caption = 'Ra'
            FocusControl = DBEdit8
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 48
            Top = 12
            Width = 129
            Height = 21
            DataField = 'Turma'
            DataSource = DM.DS_Usuario
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 48
            Top = 60
            Width = 57
            Height = 21
            DataField = 'Idade'
            DataSource = DM.DS_Usuario
            TabOrder = 1
          end
          object DBEdit8: TDBEdit
            Left = 48
            Top = 36
            Width = 145
            Height = 21
            DataField = 'Ra'
            DataSource = DM.DS_Usuario
            TabOrder = 2
          end
        end
      end
      object BtBtnnovo: TBitBtn
        Left = 16
        Top = 168
        Width = 91
        Height = 41
        Caption = 'Novo'
        TabOrder = 5
        OnClick = BtBtnnovoClick
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          08000000000000040000120B0000120B0000000100000001000089140100C0DE
          CD0026AC5300DD340000E6A8530000000000C679290085BD8A00F57758005F69
          1200DB8439006DB08A00FBF8F7008A450900D2AD8E00DC683200BFA68B004481
          2600BD6D1700FFAF7B00B08360003DB47100DCECDD00A6643F00BD24000091CB
          AA00FE500200C8430300E9956900FF7B43001B8C3000B56A170043A35C00C2D0
          C80072B08D00E5D9CE009B984000FF562F00EE8E5700D5C2B100CE643900DCA5
          740069AD7000A91C0000E38F3E009E631B00DD422000BD513000B4432200B595
          7200FF502B0081CBA00035A25300CC7C3C00F9F0E70072CA97002A852E00BD67
          3100FF894A00FAB27D00FF6813007D833100E6E6E6009662210066C991004EB6
          7300A5734B00A6511D00EF3F0000A7CBB600FF6D3B00CE2C000023781900FF91
          6D00DEDEDE009B270D00F7963800CEB9A500B6784900BB531F00A8381300D799
          6200C0875B006F812200FF7C5D00E3764000E47D4A00FFA558005DB784002D95
          410028C36A00BD6426005CC88B00EF571300B15C2300F7F4F1008AB99E0098C7
          9D00BF6E3C00FE8860006E753000D9CABA00FF9C540043AE6500578A2D00EDC8
          9E00E0924900CBE5D600D3804200B262390021C063004AC67F00DABAB100BF35
          1600FF9E7500D38D5A0041C37700ABD0BB00A24B1900E379440091260800F3EE
          E900FF4A2900A7692200F7A67200CD682E00F6A36E008D542E002EB35E00F764
          360019852800B7500A00FF943900B6622300E19262001E852800F7450000C173
          2500C4753A0029923D00D0481100FF866400218B330073B58C00E79C7A00D1DA
          D500876E1300CBAB9B008F381C00AC725000B3200000CE452400FF824D00F96E
          4D00F89B42006BCA9400D831000052B8760042904200FFAD5500A1693A00E48B
          4A00C27C680062C38C00EBD6C100F1E6E300FF603200BD643E00E5F1E600E27C
          5B00CD5C3F00FA852E009AC2AB0034C4720057C88700A855220075CA9A008BCB
          A600D3833600FF743F00C3550600BEDCC100A4CDA800FFB68100F6F6F600EAE0
          D70029822200921805008BC09100C3270000388A3100EF95610048B36C00BF9F
          830052A15A00B8D8BB00F69C6200FFFFFF00C6713100C87D2F002C9C4800B18E
          6D0093B9A300F39F6800EC864B00D9E5DE00FF9A4C00FA751E00F8884900BF4E
          0C00BB6C2600D1704800AF691A00E0BB9700DB531600E6390000E1733C00D6E9
          D80015C661009E250E009F4A080098682E009D6A330036B46C00CB664800CD39
          0A00168B2C00E7A0490072B99100DDC1B8009DD1B30017812100FA4800001594
          3400E0684C00F6EFED00AE1E00006BC08B00EFA17000EC7A5A003CA95D009B71
          4100CF7C4C0021933A00FDA97000EE915B00FD5307007AB19100D8D8D800E9F3
          EA009C1600006CC69200FEAE5800FF7B5200C4741F00F7FFF700C5C5C5C5C5C5
          C5C5C5C5C5C5C5C5C5C5C5C5C5A8C3BC0707B616FFC5C5C5C5C5C5C5C5C50CB9
          5FC5C5C5C5C5C5C5C5C5C5D92A8787E9E9E9E282C2B5C5C5C5C5C5C5C5234276
          7F9593235FC5C5C5C5C5C38B1E026EDADADA5A80F38761C5C5C5C5C55FDE1F5B
          BBBB0078944210A5C56B87C874AD5A580B0B5AAD6FF0E761C5C5C5C5277B895E
          4B56665628304B787F38C8AE6FAD5A017991DFAD6F5C6787B5C5C5C510D48943
          50DBD37CB7B73B1C6482405C6F74AD6BC54A15746F5CFB59C2FFC5C5C91F0643
          30FAFA50E0906969BE209B5C6F6F746BC54A416FAE5C9B9D8216C5C54212C7AF
          4FFAFA2B2B9671A0E7EDED60F72222CDC53EF7F7F7F7E4FB8EB6C55FF112C785
          852B2B969618BD0D82FBFB793E3E3EB8C50C3E3E3EF8609B5907C579DE12C7D2
          5B969618BDBD470D82A3FBC5C5C5C5C5C5C5C5C5C5B860405907C5B9DDFEC789
          5BBDBDBD47479CDCE7AEA3E6E6E675A8C55F75757575B0408BBCC5233FFEC7C7
          85E147479C03031B48C0AE5C40B033CDC54A6033B09B40AE82B5C5652DFEC7C7
          5ED69C0303D7D74409F3AE5C9B3319CDC54A60B1333740F038F9C54DD406C7C7
          5E0AD7D7D7444488B448674037B1ACCDC53ECA193337588207C5C510D406C7C7
          85B25D44448888881A9282C037B1E6219191AC1933A38B9EF9C5C5311F06C7C7
          C7762CABCFF61A1A3CCF53E734FBB145454519B0411EBA420CC5C5140F777777
          77772F5BC60A4C4C4C849A24BA1E34C09D41F08BE768862823C55F9599545454
          5454545408EAAAAA39049F9F042468BABABA113D35D0980F93C57917FD8D8D8D
          8D8D8D8D8D8D8D8DEF5EFCFC575757E36A6AD0981DB3B381A2C5A51763494949
          494949494949494949A935FC5766663A3A3A1DB34646A6A6AA5F791749727272
          72727272727272727272A7E3663A3A3A1DB34646A6A6252597A55F427E131313
          131313131313131313137C6DE39FCE3A1D46A6A6253232322EE5C5C9EE131313
          1313131313131313131313EE62628A350A2C9A1D46A625322E70C54D52F43B13
          13131313131313131313131313137CEE86F239AF85C62C0A6D79C5EB1473BFCB
          7E7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7CC4A170EBA44D7079C5C5C55F4DC152
          4E628A6CCC262626BFBFBFBFF5F5F5F5F5CC0AA5C5C5C5C5C5C5C5C5C5C5C5C5
          EB234DC1C94E395B7D0FD85555555656550F6CC5C5C5C5C5C5C5C5C5C5C5C5C5
          C5C5C5C5C50CEBB9E50E528583D18C8C8C8C29C5C5C5C5C5C5C5C5C5C5C5C5C5
          C5C5C5C5C5C5C5C5C5C5C5C536A4D573355136C5C5C5C5C5C5C5C5C5C5C5C5C5
          C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
          C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
          C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5}
      end
      object BtbtnSalvar: TBitBtn
        Left = 128
        Top = 168
        Width = 91
        Height = 41
        Caption = 'Salvar'
        Enabled = False
        TabOrder = 6
        OnClick = BtbtnSalvarClick
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          08000000000000040000120B0000120B0000000100000001000090140200CCCC
          CC0030AB3B00DD350000C3A24A00237F210092A69400C6792900F37657000000
          0000E379440070AA75007C7C1E00D0A88800BD6D1700FCF9F50098461E00B663
          1400E572280059B462009E631B00B0B6B000ECEFE600BD250000C0835300E65A
          2F00DDC4AF003B781A006B8E6E00F9AF7B00E6976900C14D0D008ECC940041A7
          4B006B600F00FF7A4200903C200073C77C00DBA472009A826300BF6F3C00FB6A
          190042984A00E8D8D300B84F0A00B06A4E00DE8F6000FFB68100BAB47E00AE1E
          0000C4C9C400DB8C3A009D774C00E54A0200BDC2BE00BE9C80007AAD7E00C139
          1A00AE5B2000CC7E37003BA245002E7A3500FAA8580054C55F003B7B4100BC5D
          230045C3510081CB8700FE973800AD8E6C00A6643F00CF8E5600FF733F006A5E
          3200D5D8D600FF916D0031763800FEA75000F6F3EF0096622100BC612C00A4AB
          A500CE2C0000B9794C00E5754500E5E6E500C56C48007AC88300EDDBC900FBC9
          A4001D9E2900A9D0AD0090260800A0CEA50051B25B00907F3200EF993C005B82
          6000FA832C00FF67380069C67200F03F00005F8E300039C24600F3AD4D0063A4
          6800FE886000B7652700279232008CB19000DDB68F00B55E2D00D0AFA70021BF
          3000FF4E2B00AE321900FD4C0000A9391400EEA54C00BAD5BD00B98C6700D661
          3600CB5C3E00D0884C00FF9B530021842B00FF9E750039BD4600FF866400E792
          4000FF603400B2D1B500FDA9700063C46D00D5824300EAD2BB00EE915B00399D
          4100A7692200B94E1E00F7A46E0068702E006BBD7300C4741F00FFFFFF00F96E
          4D00F4EEE900C8743200E89F7D00EC864B00F7A67200FF804C0062B76B00D37B
          3500B2612100A0180000DB864500FF562F00DCE4DD00A7530800EF5713009A26
          0B00C6E0C8008BC991007C863200E6DBD100C9DECB00F7F7F700CF490C00EF95
          6200C327000097903C00E889520056BC6100D17048002A8D3300D83100009B71
          4100FF8F4D00BFA68B00D9CABA002BC03A00B6260200B7823A004EBD5900E173
          3D00CCAC9D002C943700B9CEC10039974100AF583100DF684B00C5763900CF45
          2100F69B6000B0C2B200B083600023892D00C87D2F0071927400F39F69004E8D
          5400D58D5F0092CD98003CB14700BD5130003A832900B595720075CA7D00C12E
          0500F7450000B2691900AC725000E4BE9900B2422100FD520500B85E2300C0D3
          C200EFEFEF00E73A0000BD6C3200CEBBA80082AC8600FFAC5900F3EAE700B787
          62002CB53A00931A0600A46A500098682E00F7963800B94D33009D6A3300CE39
          09005EAA670083C48900CFD5D0004AC45500EBE0D50096B2990082CB89003579
          2400F6572F00FA490000D7E4D8005A975F00CC9C4B00E47D4A00A22B1300E06A
          3000E5854900339B3D00FFAF7B00FF7C5D0059C56400A2CCA600909090909090
          909090909090909090909090DA3206C71CC75101DA9090909090909090900FEE
          4E909090909090909090A7C3C97D5A5A5A5AC53D6136A7909090909090A5B110
          10C4BAA50F90909090A7DEAF027FB57171B567CC6C4C51A7909090904EE811D8
          00E3005C24E4BAE00FDE6CB84267BD0271B567EDFE213D510F9090901A8A8F6B
          A1FA7CF77AD6A15C49AF85FE422A15EFE2B567EDFE64214001909090B3D38F6B
          75F8AE962F2F1DCAF19864ADF536A7DA387F42EDFE64D0BD1C4E909045D3073A
          8B009B73AE9459302A57EAC732A79E0F4A69ED3F8564D0133D4A9090340EC63A
          419B9B9B31B6398D980BC355909025A2904A69FE856425257DC390A7B10EC63A
          413131313117171B8ED0EBA6A777FE25DA90320B856425256C0690E0E80EC69A
          41B6B617AAAAAA1B85256464A3256464839090EC38986425BBDE90EEE58FC66B
          D8D1AAAA5252521B9864646464255743A39E90904A0664646CEF90A54F8FC607
          D8E95252B00303225E858564D0F020CBCBFF4E90909E6464C53290B4148FC6C6
          9AA8B0B003DBDB9F8985852543CB5D5B5B5B77A790F464133D5590DDD307C6C6
          3A1203DBDB6565351BAD64D0A35D837777775B83DAF464896D0F90B3D307C6C6
          9A33A06565D2D27414AF6457CB5BD9ECECD9835D5DD95E2A559090CFD307C6C6
          C610606229D7D7D7290CBB64CB5BD9ECECD9835D43130527909090C4F9540A0A
          0A0ACD50933360E64444A4AF5E435D83835B208E3CCE7B564E904ED491FDFDFD
          FDFDFDFD08BF7A7ADC68DF0466AFFB21213CBBCE5F9597792B909246FD808080
          8080808080808080F7DCDFDF3EF6ABA4A4A4B70A23484819BA90E0466A4B4B4B
          4B4B4B4B4B4B4B4B4BAE81DF7C7C7CB2B2972348486382F22D9092464B7E7E7E
          7E7E7E7E7E7E7E7E7E7EBE767CB2B2972348486382829D9DE74E4ED48CFCFCFC
          FCFCFCFCFCFCFCFCFCFC8CDC764D7C97486382829D727272C1EE9045C8FCFCFC
          FCFCFCFCFCFCFCFCFCFCFC1E2828C03B3381B22363827272C12B90DD1884FCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFC96962EAE6F3A6B9981992D0F904EC4CAA9C8
          8C96969696968C8C8C8C8C8C8C8C8C8C8CC29C58E0B470B40F909090A7DD37E1
          53DCC09CAC888888A9A9A9A9888888888895860F909090909090909090909090
          4EA5DD37E153DC5093F9B90A0A0AF7F7B9F9CA90909090909090909090909090
          90909090900F92EE1A0D189A2C1FA8A8A8A8D590909090909090909090909090
          90909090909090909090909092876E473B260F90909090909090909090909090
          9090909090909090909090909090909090909090909090909090909090909090
          9090909090909090909090909090909090909090909090909090909090909090
          9090909090909090909090909090909090909090909090909090}
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 8
        Top = 104
        Width = 313
        Height = 57
        Caption = 'Nivel'
        Columns = 3
        DataField = 'Cod_Nivel'
        DataSource = DM.DS_Usuario
        Items.Strings = (
          'Gerente'
          'Professor'
          'Aluno')
        TabOrder = 7
        Values.Strings = (
          '3'
          '2'
          '1')
        OnClick = DBRadioGroup1Click
      end
    end
  end
end
