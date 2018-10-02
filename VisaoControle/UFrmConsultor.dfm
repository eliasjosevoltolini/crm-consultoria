inherited FrmConsultor: TFrmConsultor
  Caption = 'CRM Consultor'
  ClientHeight = 523
  ClientWidth = 886
  ExplicitWidth = 902
  ExplicitHeight = 561
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 886
    ExplicitTop = 0
    ExplicitWidth = 886
    inherited ImCabecalho: TImage
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF4000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000003
        C84944415478DAED975948555114863D36589646A2F51029120669E4D0405120
        46104D262A910FBD44885A190665239A4569135AA449D48B10199925563E9584
        5090A6891A8444852F515159D9ECED5BD775E2743BA79B43F4E285C57FF6BFFF
        B5D7BF87B38F1A3EFFF9670C1B1836D0DF84DEDEDE10209B58414C57FA1171CD
        308C12E2E53F3340F154E01C45021C246F5D2ED77A5F5FDFCB436E408B5FA4B8
        41912B325BF09E7B10C398CBF31630097441A560A27AC00618239890654E64A0
        188A4FE2B953660EBF0DEEA883C95C348568BAC169B21D70AD74D51225E43DF7
        6A80848580CC30586767C0ED07F630F0550649F2B252356857A12D409BA72B22
        937A0DA4C2DD743480281410C71378BE0D1691709D415B18349A760258EFC580
        686E92DF426E2CEDA5D0B23209BA32B1C4635B0388CBE94C4778034C24BE29DF
        ADCB3F9E413F78311080B61BED3BB4813AB1117A6E568267E0D39D0C74219A82
        6836A2FB969579A3ABD21F03AFD10659F838F826F82EF8A94E063E231ACDE338
        B0C7C2DF97A5237931C9B7FE660B786C02E75826E10F7C003F33C61827034F49
        0A451487A8D9C2EF863FD0CF43B80BED219B1578021FEE64A0145126A25A79A7
        89EFCA4F063A6807D1B783018A1C8AEF447310CD2B9A33D0BDB0390365F0594E
        06C28056848108EB7DFADE823AED5B0D54D12783D5F05C4C346AEA5C22470B88
        E964F26A346F197C2E8FF17A9662E87B6A6B4013E2816A9226BA05FC2C7DC9C0
        252B67FDD9DD821EF740127DB7AD399EF780CC4EDCE6536394D500C553806334
        C3FE7406C897D96D35BF0716035F75DC42B9DB7E338040EE78995DB28ACF1215
        B4EFD02E06B3552717D503DAEB3C0A5700D1F0B3B42D5FC61C70014DD16EA03D
        526BAC914FCA2F06986101E45E04727096338346E54FC06F86FFA4FB5CDEF73D
        72E5D3CED3F47D70F970BE4406EDE3B4FDC438E3E4E838F30039DC21E635FDD3
        805CC144A73C128BE8BC67EE390955F2EE824B88068FF3E27E1BD0E77AF00940
        9DDC29E4269B67424D34689D69F05DE6FE1E46BCCDFA8AC0F9018FF45EC8843F
        6D7360F3D4C03E9BBE2C724F91FB0C8C20BE285FC67306FC11F2B69B06DA20A3
        64BF20EF2A9706775E3E2A609CB9671E45DAD54094CD6194ED68963301AE4553
        A939F3F55CB5C3CD340DF4408EF5B15CC170957258106E44586A533C92FE762D
        1685A6C346B309CD49FA2FD09FA69CD4780FF711CEDFF12F22848F1186238C44
        F8D06EF9E5E0A9817C876D8842D326E78BFE08BB3A7F32E05E15F98890FCD16E
        F9E98F54031D0EDB607E80DCB3ED97016F3FBBD77020E30CEAFF0235E133D0E2
        83363014BF61033F0006D9943FFFBAB4F20000000049454E44AE426082}
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 886
    ExplicitTop = 43
    ExplicitWidth = 886
  end
  inherited pnlBotoes: TPanel
    Top = 471
    Width = 886
    ExplicitTop = 471
    ExplicitWidth = 886
    inherited btnGravar: TImage
      Left = 278
      ExplicitLeft = 278
    end
    inherited lbGravar: TLabel
      Left = 346
      ExplicitLeft = 346
    end
    inherited btnExcluir: TImage
      Left = 427
      ExplicitLeft = 427
    end
    inherited btnLimpar: TImage
      Left = 582
      Top = 2
      ExplicitLeft = 582
      ExplicitTop = 2
    end
    inherited btnSair: TImage
      Left = 737
      Top = 2
      ExplicitLeft = 737
      ExplicitTop = 2
    end
    inherited lbExcluir: TLabel
      Left = 495
      ExplicitLeft = 495
    end
    inherited lbLimpar: TLabel
      Left = 654
      ExplicitLeft = 654
    end
    inherited lbSair: TLabel
      Left = 804
      ExplicitLeft = 804
    end
  end
  object gbInformacoes: TGroupBox [3]
    Left = 0
    Top = 101
    Width = 886
    Height = 370
    Align = alClient
    Caption = ' Informa'#231#245'es do Consultor '
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
      Width = 157
      Height = 19
      Caption = 'Segmento Profissional'
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
    object cbSegmentoProfissional: TComboBox
      Left = 16
      Top = 185
      Width = 440
      Height = 27
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Microsoft JhengHei UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = cbSegmentoProfissionalExit
      Items.Strings = (
        'Administra'#231#227'o, neg'#243'cios e servi'#231'os'
        'Administra'#231#227'o'
        'Administra'#231#227'o P'#250'blica'
        'Agroneg'#243'cios e Agropecu'#225'ria'
        'Ci'#234'ncias Aeron'#225'uticas'
        'Ci'#234'ncias Atuariais'
        'Ci'#234'ncias Cont'#225'beis'
        'Ci'#234'ncias Econ'#244'micas'
        'Com'#233'rcio Exterior'
        'Defesa e Gest'#227'o Estrat'#233'gica Internacional'
        'Gastronomia'
        'Gest'#227'o Comercial'
        'Gest'#227'o de Recursos Humanos'
        'Gest'#227'o de Seguran'#231'a Privada'
        'Gest'#227'o de Seguros'
        'Gest'#227'o de Turismo'
        'Gest'#227'o Financeira'
        'Gest'#227'o P'#250'blica'
        'Hotelaria'
        'Log'#237'stica'
        'Marketing'
        'Neg'#243'cios Imobili'#225'rios'
        'Pilotagem Profissional de Aeronaves'
        'Processos Gerenciais'
        'Seguran'#231'a P'#250'blica'
        'Turismo'
        'Artes e Design'
        'Anima'#231#227'o'
        'Arquitetura e Urbanismo'
        'Artes Visuais'
        'Comunica'#231#227'o das Artes do Corpo'
        'Conserva'#231#227'o e Restauro'
        'Dan'#231'a'
        'Design'
        'Design de Games'
        'Design de Interiores'
        'Design de Moda'
        'Fotografia'
        'Hist'#243'ria da Arte'
        'Jogos Digitais'
        'Luteria'
        'M'#250'sica'
        'Produ'#231#227'o C'#234'nica'
        'Produ'#231#227'o Fonogr'#225'fica'
        'Teatro'
        'Ci'#234'ncias Biol'#243'gicas e da Terra'
        'Agroecologia'
        'Agronomia'
        'Alimentos'
        'Biocombust'#237'veis'
        'Biotecnologia'
        'Biotecnologia e Bioqu'#237'mica'
        'Ci'#234'ncia e Tecnologia de Alimentos'
        'Ci'#234'ncias Agr'#225'rias'
        'Ci'#234'ncias Biol'#243'gicas'
        'Ci'#234'ncias Naturais e Exatas'
        'Ecologia'
        'Geof'#237'sica'
        'Geologia'
        'Gest'#227'o Ambiental'
        'Medicina Veterin'#225'ria'
        'Meteorologia'
        'Oceanografia'
        'Produ'#231#227'o de Bebidas'
        'Produ'#231#227'o Sucroalcooleira'
        'Rochas Ornamentais'
        'Zootecnia'
        'Ci'#234'ncias Exatas e Inform'#225'tica'
        'An'#225'lise e Desenvolvimento de Sistemas'
        'Astronomia'
        'Banco de Dados'
        'Ci'#234'ncia da Computa'#231#227'o'
        'Ci'#234'ncia e Tecnologia'
        'Computa'#231#227'o'
        'Estat'#237'stica'
        'F'#237'sica'
        'Gest'#227'o da Tecnologia da Informa'#231#227'o'
        'Inform'#225'tica Biom'#233'dica'
        'Matem'#225'tica'
        'Nanotecnologia'
        'Qu'#237'mica'
        'Redes de Computadores'
        'Seguran'#231'a da Informa'#231#227'o'
        'Sistemas de Informa'#231#227'o'
        'Sistemas para Internet'
        'Ci'#234'ncias Sociais e Humanas'
        'Arqueologia'
        'Ci'#234'ncias do Consumo'
        'Ci'#234'ncias Humanas'
        'Ci'#234'ncias Sociais'
        'Cooperativismo'
        'Direito'
        'Escrita Criativa'
        'Estudos de G'#234'nero e Diversidade'
        'Filosofia'
        'Geografia'
        'Gest'#227'o de Cooperativas'
        'Hist'#243'ria'
        'Letras'
        'Libras'
        'Lingu'#237'stica'
        'Museologia'
        'Pedagogia'
        'Psicopedagogia'
        'Rela'#231#245'es Internacionais'
        'Servi'#231'o Social'
        'Servi'#231'os Judici'#225'rios e Notariais'
        'Teologia'
        'Tradutor e Int'#233'rprete'
        'Comunica'#231#227'o e Informa'#231#227'o'
        'Arquivologia'
        'Biblioteconomia'
        'Cinema e Audiovisual'
        'Comunica'#231#227'o em M'#237'dias Digitais'
        'Comunica'#231#227'o Institucional'
        'Comunica'#231#227'o Organizacional'
        'Educomunica'#231#227'o'
        'Estudos de M'#237'dia'
        'Eventos'
        'Gest'#227'o da Informa'#231#227'o'
        'Jornalismo'
        'Produ'#231#227'o Audiovisual'
        'Produ'#231#227'o Cultural'
        'Produ'#231#227'o Editorial'
        'Produ'#231#227'o Multim'#237'dia'
        'Produ'#231#227'o Publicit'#225'ria'
        'Publicidade e Propaganda'
        'R'#225'dio, TV e Internet'
        'Rela'#231#245'es P'#250'blicas'
        'Secretariado'
        'Secretariado Executivo'
        'Engenharia e Produ'#231#227'o'
        'Agrimensura'
        'Aquicultura'
        'Automa'#231#227'o Industrial'
        'Constru'#231#227'o Civil'
        'Constru'#231#227'o Naval'
        'Eletr'#244'nica Industrial'
        'Eletrot'#233'cnica Industrial'
        'Energias Renov'#225'veis'
        'Engenharia Ac'#250'stica'
        'Engenharia Aeron'#225'utica'
        'Engenharia Agr'#237'cola'
        'Engenharia Ambiental e Sanit'#225'ria'
        'Engenharia Biom'#233'dica'
        'Engenharia Bioqu'#237'mica, de Bioprocessos e Biotecnologia'
        'Engenharia Cartogr'#225'fica e de Agrimensura'
        'Engenharia Civil'
        'Engenharia da Computa'#231#227'o'
        'Engenharia de Alimentos'
        'Engenharia de Biossistemas'
        'Engenharia de Controle e Automa'#231#227'o'
        'Engenharia de Energia'
        'Engenharia de Inova'#231#227'o'
        'Engenharia de Materiais'
        'Engenharia de Minas'
        'Engenharia de Pesca'
        'Engenharia de Petr'#243'leo'
        'Engenharia de Produ'#231#227'o'
        'Engenharia de Seguran'#231'a no Trabalho'
        'Engenharia de Sistemas'
        'Engenharia de Software'
        'Engenharia de Telecomunica'#231#245'es'
        'Engenharia de Transporte e da Mobilidade'
        'Engenharia El'#233'trica'
        'Engenharia Eletr'#244'nica'
        'Engenharia F'#237'sica'
        'Engenharia Florestal'
        'Engenharia H'#237'drica'
        'Engenharia Industrial Madeireira'
        'Engenharia Mec'#226'nica'
        'Engenharia Mecatr'#244'nica'
        'Engenharia Metal'#250'rgica'
        'Engenharia Naval'
        'Engenharia Nuclear'
        'Engenharia Qu'#237'mica'
        'Engenharia T'#234'xtil'
        'Fabrica'#231#227'o Mec'#226'nica'
        'Geoprocessamento'
        'Gest'#227'o da Produ'#231#227'o Industrial'
        'Gest'#227'o da Qualidade'
        'Irriga'#231#227'o e Drenagem'
        'Manuten'#231#227'o de Aeronaves'
        'Manuten'#231#227'o Industrial (T/L)'
        'Materiais'
        'Mecatr'#244'nica Industrial'
        'Minera'#231#227'o'
        'Papel e Celulose'
        'Petr'#243'leo e G'#225's'
        'Processos Metal'#250'rgicos'
        'Processos Qu'#237'micos'
        'Produ'#231#227'o T'#234'xtil'
        'Saneamento Ambiental'
        'Seguran'#231'a no Trabalho'
        'Silvicultura'
        'Sistemas Biom'#233'dicos'
        'Sistemas de Telecomunica'#231#245'es'
        'Sistemas El'#233'tricos'
        'Sistemas Embarcados'
        'Transporte'
        'Outras'
        'Artes'
        'Biossistemas'
        'Ci'#234'ncia da Terra'
        'Ci'#234'ncia e Economia'
        'Ci'#234'ncia e Tecnologia'
        'Ci'#234'ncia e Tecnologia das '#193'guas/do Mar'
        'Ci'#234'ncias Agr'#225'rias'
        'Ci'#234'ncias da Natureza e suas Tecnologias'
        'Cultura, Linguagens e Tecnologias Aplicadas'
        'Energia e Sustentabilidade'
        'Humanidades'
        'Linguagens e C'#243'digos e suas Tecnologias'
        'Matem'#225'tica e Computa'#231#227'o e suas Tecnologias'
        'Sa'#250'de'
        'Tecnologia da Informa'#231#227'o'
        'Sa'#250'de e Bem-Estar'
        'Biomedicina'
        'Educa'#231#227'o F'#237'sica'
        'Enfermagem'
        'Esporte'
        'Est'#233'tica e Cosm'#233'tica'
        'Farm'#225'cia'
        'Fisioterapia'
        'Fonoaudiologia'
        'Gerontologia'
        'Gest'#227'o Desportiva e de Lazer'
        'Gest'#227'o em Sa'#250'de'
        'Gest'#227'o Hospitalar'
        'Medicina'
        'Musicoterapia'
        'Naturologia'
        'Nutri'#231#227'o'
        'Obstetr'#237'cia'
        'Odontologia'
        'Oft'#225'lmica'
        'Optometria'
        'Psicologia'
        'Quiropraxia'
        'Radiologia'
        'Sa'#250'de Coletiva'
        'Terapia Ocupacional')
    end
  end
  inherited pmOpcoes: TPopupMenu
    Left = 656
    Top = 96
  end
end
