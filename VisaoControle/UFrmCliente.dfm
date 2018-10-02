inherited FrmCliente: TFrmCliente
  Caption = 'CRM Clientes'
  ClientHeight = 744
  ClientWidth = 858
  ExplicitTop = -149
  ExplicitWidth = 874
  ExplicitHeight = 782
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 858
    ExplicitWidth = 858
    inherited ImCabecalho: TImage
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF4000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000002
        3A4944415478DAED96BF6B535114C773138D546B9ACD217351D1A482D0B45944
        D2A98A68D6FE03216A282E813A1BB4B443684474D7CD48C56E22382518C121C4
        A4BB086EADA63FD436F173E4466A721FBCD71768A12F70F89E9CFBFD9EF73DF7
        BEDE54F90EF8A33C039E01CF80A9D8E97482449A7486B8A0CB35E28552EA29F1
        6B50BA3E03ED763B02BC817CC9E2219F80EB7EBFFFEB2074AAA7C909A04A9328
        82CFE473C4BBBF44A592D4F2E07969064E7427DAAFCE6420CB62419A800962BD
        678A3051A67E0EBCCB3445373A93810AA438A49B90964D5B09E7169C129C0A9C
        49373A938116A453A4A7C19645A3904C48A31F340AB9D1F51960710D18B1D388
        741D0CBBD1997640CE698286295CBEB2689482F352CE144EC28DCE642003E931
        A4867E99D60C2F939CF7593043A3276E74A623380E9489CBE44DF03EF116A1E2
        7B92FC21E928F947FDA0DF6E747D06F4346780F7E2D6B495345905AE30C53787
        BA0670B55767BA881608D952BF45A31DA0C87AAEE7227A44DCA116B0D0C9D40F
        58CF1B7700428028B17803DCA6F48C784ED43545EE76B9E3D370E4CE972DBEA6
        B52BE4533675AF41792177FF33C0148B14EF41F8C2D769B6AA669A04DE18200F
        8CC0951BED1879DAA16E1E5EEE9F01166380FC58C8968E5B35D9D32C0A5489A0
        2EFD74A893973606BFDE3520677A1B67058AB33E1B1F340534597D048E756896
        D064BB069AFA6F344EF183CD46F2AB56D6061CEBD0D4D15CEC1AD8A438447198
        E286CD4672ED7ED7061CEBD06CA1397938FF25F30C78068E94813FED4BEB3000
        25BDB50000000049454E44AE426082}
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 858
    ExplicitWidth = 858
  end
  inherited pnlBotoes: TPanel
    Top = 692
    Width = 858
    ExplicitTop = 692
    ExplicitWidth = 858
    inherited btnGravar: TImage
      Left = 250
      ExplicitLeft = 250
    end
    inherited lbGravar: TLabel
      Left = 320
      ExplicitLeft = 322
    end
    inherited btnExcluir: TImage
      Left = 399
      Top = 2
      ExplicitLeft = 399
      ExplicitTop = 2
    end
    inherited btnLimpar: TImage
      Left = 554
      Top = 2
      ExplicitLeft = 554
      ExplicitTop = 2
    end
    inherited btnSair: TImage
      Left = 709
      Top = 1
      ExplicitLeft = 709
      ExplicitTop = 1
    end
    inherited lbExcluir: TLabel
      Left = 469
      ExplicitLeft = 471
    end
    inherited lbLimpar: TLabel
      Left = 628
      ExplicitLeft = 630
    end
    inherited lbSair: TLabel
      Left = 792
      ExplicitLeft = 794
    end
  end
  object sbCentro: TScrollBox [3]
    Left = 0
    Top = 101
    Width = 858
    Height = 591
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    object gbDadosPessoais: TGroupBox
      Left = 3
      Top = 0
      Width = 822
      Height = 284
      Caption = ' Dados Pessoais '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
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
      object lbCpf: TLabel
        Left = 16
        Top = 90
        Width = 27
        Height = 19
        Caption = 'CPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
      end
      object lbRG: TLabel
        Left = 16
        Top = 152
        Width = 21
        Height = 19
        Caption = 'RG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
      end
      object lbDataNascimento: TLabel
        Left = 16
        Top = 218
        Width = 119
        Height = 19
        Caption = 'Data Nascimento'
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
      object edCPF: TMaskEdit
        Left = 16
        Top = 115
        Width = 440
        Height = 25
        EditMask = '000.000.000-00;0; '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        MaxLength = 14
        ParentFont = False
        TabOrder = 1
      end
      object edRG: TEdit
        Left = 16
        Top = 177
        Width = 440
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object edDataNascimento: TDateTimePicker
        Left = 16
        Top = 243
        Width = 436
        Height = 27
        Date = 43361.895203599540000000
        Time = 43361.895203599540000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    object gbContatos: TGroupBox
      Left = 7
      Top = 309
      Width = 818
      Height = 363
      Caption = ' Contatos '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object lbResidencial: TLabel
        Left = 16
        Top = 34
        Width = 79
        Height = 19
        Caption = 'Resid'#234'ncial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
      end
      object lbComercial: TLabel
        Left = 16
        Top = 98
        Width = 70
        Height = 19
        Caption = 'Comercial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
      end
      object lbCelular: TLabel
        Left = 16
        Top = 162
        Width = 49
        Height = 19
        Caption = 'Celular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
      end
      object lbEmail: TLabel
        Left = 16
        Top = 292
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
      object lbRecado: TLabel
        Left = 16
        Top = 228
        Width = 52
        Height = 19
        Caption = 'Recado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
      end
      object edResidencial: TMaskEdit
        Left = 16
        Top = 59
        Width = 440
        Height = 25
        EditMask = '(00) 0000-0000;0; '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        MaxLength = 14
        ParentFont = False
        TabOrder = 0
      end
      object edComercial: TMaskEdit
        Left = 16
        Top = 123
        Width = 440
        Height = 25
        EditMask = '(00) 0000-0000;0; '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        MaxLength = 14
        ParentFont = False
        TabOrder = 1
      end
      object edCelular: TMaskEdit
        Left = 16
        Top = 187
        Width = 436
        Height = 25
        EditMask = '(00) 0 00000-000;0; '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        MaxLength = 16
        ParentFont = False
        TabOrder = 2
      end
      object edEmail: TEdit
        Left = 16
        Top = 317
        Width = 440
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object edRecado: TEdit
        Left = 16
        Top = 253
        Width = 440
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object gbEndereco: TGroupBox
      Left = 7
      Top = 702
      Width = 818
      Height = 481
      Caption = ' Endere'#231'o '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object lbRua: TLabel
        Left = 16
        Top = 28
        Width = 27
        Height = 19
        Caption = 'Rua'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
      end
      object lbBairro: TLabel
        Left = 16
        Top = 156
        Width = 42
        Height = 19
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
      end
      object lbNumero: TLabel
        Left = 16
        Top = 92
        Width = 58
        Height = 19
        Caption = 'N'#250'mero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
      end
      object lbCidade: TLabel
        Left = 16
        Top = 220
        Width = 50
        Height = 19
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
      end
      object lbUF: TLabel
        Left = 16
        Top = 284
        Width = 19
        Height = 19
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
      end
      object lbComplemento: TLabel
        Left = 16
        Top = 348
        Width = 99
        Height = 19
        Caption = 'Complemento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
      end
      object lbPontoDeReferencia: TLabel
        Left = 16
        Top = 411
        Width = 140
        Height = 19
        Caption = 'Ponto de Refer'#234'ncia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
      end
      object edRua: TEdit
        Left = 16
        Top = 53
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
      object edBairro: TEdit
        Left = 16
        Top = 181
        Width = 440
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object edNumero: TEdit
        Left = 16
        Top = 117
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
      object edCidade: TEdit
        Left = 16
        Top = 245
        Width = 440
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object cbUF: TComboBox
        Left = 16
        Top = 309
        Width = 220
        Height = 27
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
      end
      object edComplemento: TEdit
        Left = 16
        Top = 373
        Width = 440
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object edPontoDeReferencia: TEdit
        Left = 16
        Top = 436
        Width = 440
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
  end
  inherited pmOpcoes: TPopupMenu
    Left = 744
    Top = 96
  end
end
