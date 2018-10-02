inherited FrmUsuario: TFrmUsuario
  Caption = 'CRM Usu'#225'rio'
  ClientHeight = 469
  ClientWidth = 867
  ExplicitWidth = 883
  ExplicitHeight = 507
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 867
    ExplicitWidth = 867
    inherited ImCabecalho: TImage
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF4000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000002
        724944415478DAED95CF2F9C411CC677B62A21A5B1825B7F6834E2222B44E256
        073D545B29826BEF08DDA248089B2E96E01F70946DD354AD360E127571423949
        FC6A256E4D7575A56D22ECFACC9AC3A6B176673BDACBBEC937CFFC78BECFF799
        79DF774658FEF32312061206741302814016D0443C20EEAAE14DE28310629CF8
        766906285E034C50242D02E54730187C6AB55ADF1A37A08ABFA6B8A0C83BB95A
        702924224409ED66B00A0C32548D89296306289E0D6CCB95A3FF1CF1E108BC76
        380370FCE09D585E47AC06FA11EB46789AE25551B85EB80FE1F6C1ED3165600D
        D1429AF7C085285CC999C7C01A06ECA60CF8D5F65F43F467146E1A5C3FDC43B8
        E9460C2076005CD734E0836B33B5039F10B5235A8EE8C728DCD02BA0B902169B
        32D0859853F323EC84EB326520075847D8867007C28311782FE0BC84B34FB700
        DE57230694F813CBD9417485025EDA63C4B29A2E215A98AB64EEC47276104DC7
        A21BCF51FC8A42D6F3E6291E006A2FEB287E048C523CF7221E2676E46E6062C6
        880104E5D93F446147D8D82E709FD80B89087193B159F0969A97F7819B7E87BC
        3AFECA002B1F41A415CD63BAF2686DA59F497F9CB64B5D4E9D40A3FAF846895E
        FA49F4DDEC445BDC061090BFDC14780456223687A16ADA931448FE832B39F5F2
        16845341FB3D9CAB8C3F66CCAB6D80C464620B911BA0039191B05D2905BA8832
        35B44838E12C85711CE4BAC9FD02E613475A0610A823C983C0A612B8F05D9EB3
        00F96A36C8CB03E59FF146D78087E43A92E5173DA6533C4CE3191AC36878D068
        D035F099E4DB241791BC1AA781223456D0D846234FD7C02F925368DA405F3C06
        289C017C077F632055CBC0BF7A120612064E0145776730E63C7D9D0000000049
        454E44AE426082}
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 867
    Color = 15395562
    ExplicitWidth = 867
  end
  inherited pnlBotoes: TPanel
    Top = 417
    Width = 867
    ExplicitTop = 417
    ExplicitWidth = 867
    inherited btnGravar: TImage
      Left = 259
      ExplicitLeft = 259
    end
    inherited lbGravar: TLabel
      Left = 330
      ExplicitLeft = 330
    end
    inherited btnExcluir: TImage
      Left = 408
      ExplicitLeft = 408
    end
    inherited btnLimpar: TImage
      Left = 563
      ExplicitLeft = 563
    end
    inherited btnSair: TImage
      Left = 718
      Top = 2
      ExplicitLeft = 718
      ExplicitTop = 2
    end
    inherited lbExcluir: TLabel
      Left = 471
      ExplicitLeft = 471
    end
    inherited lbLimpar: TLabel
      Left = 630
      ExplicitLeft = 630
    end
    inherited lbSair: TLabel
      Left = 804
      ExplicitLeft = 804
    end
  end
  object gbInformacoes: TGroupBox [3]
    Left = 0
    Top = 101
    Width = 867
    Height = 316
    Align = alClient
    Caption = ' Informa'#231#245'es do Usu'#225'rio '
    Color = 15395562
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Lucida Sans'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object lbNome: TLabel
      Left = 16
      Top = 32
      Width = 43
      Height = 19
      Caption = 'Nome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Microsoft JhengHei UI'
      Font.Style = []
      ParentFont = False
    end
    object lbEmail: TLabel
      Left = 16
      Top = 96
      Width = 44
      Height = 19
      Caption = 'E-mail'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Microsoft JhengHei UI'
      Font.Style = []
      ParentFont = False
    end
    object lbSenha: TLabel
      Left = 16
      Top = 160
      Width = 43
      Height = 19
      Caption = 'Senha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Microsoft JhengHei UI'
      Font.Style = []
      ParentFont = False
    end
    object lbConfirmarSenha: TLabel
      Left = 251
      Top = 160
      Width = 118
      Height = 19
      Caption = 'Confirmar Senha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Microsoft JhengHei UI'
      Font.Style = []
      ParentFont = False
    end
    object edNome: TEdit
      Left = 16
      Top = 57
      Width = 440
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Microsoft JhengHei UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edEmail: TEdit
      Left = 16
      Top = 121
      Width = 440
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Microsoft JhengHei UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edSenha: TEdit
      Left = 16
      Top = 185
      Width = 205
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Microsoft JhengHei UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 2
    end
    object edConfirmarSenha: TEdit
      Left = 251
      Top = 185
      Width = 205
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Microsoft JhengHei UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 3
      OnExit = edConfirmarSenhaExit
    end
  end
end
