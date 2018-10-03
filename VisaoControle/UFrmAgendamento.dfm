inherited FrmAgendamento: TFrmAgendamento
  Caption = 'CRM Agendamento'
  ClientHeight = 742
  ClientWidth = 1209
  ExplicitTop = 7
  ExplicitWidth = 1225
  ExplicitHeight = 780
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 1209
    ExplicitWidth = 1209
    inherited ImCabecalho: TImage
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF4000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000001
        FE4944415478DAED953D48C34014C79B08BAD8415C04170707B5888A68BB3A74
        5110577116C42F3A6811DD1C046945AA22EA2E2E4E7E8D8A93585D4A55545017
        45A70E05415A4CFC9DA69086348D345A0A3DF8F37AEFBD7BEF7797F422B98A3C
        A43240AE80A2282D9861E4470D282549D2A3AAAAA7FC5E9765F9E14F00685089
        96F8394A43D96C11710513263E8B3E1D03D09A1F50D48FFDC0B585B6D1B596E2
        414368841C917B84ED2F04220B80635FA3D818859F99F672CC71B345E4B5610E
        C9AD277781BC39C346D4EFE20CDB001415BB8BA134EAD637372B487E2BE60257
        D5AF766C80D2175C2616A05784E6013B3B624D04D7A4530057C43CF4F20210B5
        09E0C3754638CA1AAF557EAE1A7A8024313779D5147BB709E0C695249C604DAD
        D5CEED002488D5180198D7615EAD001C790434BAC474627D009C679AA313D634
        616FF1379B3D02470028162236A57F09F18DE35B15CDB13DE8CD00B0826F8278
        8835C1421F4123E6CEF5F337ECCAFC0D35885D6373EAB5237152E2B6F4907F5F
        1080D66C917890DC17A67D148D991523AF03B3AF5D4461F2A6F31DBD2D00722A
        D01E39BDD814AE0DB483E2999DA24157F6553C80D28E00E820E6C587C6A298F8
        18894B6806A5CC1AE49BE70430128B4B0623DE0F71E53EA163B4C9B1DF58EDD0
        31003B1F143BA3F4019C9E971E40D11F41D1009C1EA503F05FA30C5006F802D7
        DAA130587D1C240000000049454E44AE426082}
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 1209
    ExplicitWidth = 1209
  end
  inherited pnlBotoes: TPanel
    Top = 690
    Width = 1209
    TabOrder = 3
    ExplicitTop = 690
    ExplicitWidth = 1209
    inherited btnGravar: TImage
      Left = 597
      Top = 1
      ExplicitLeft = 581
      ExplicitTop = 1
    end
    inherited lbGravar: TLabel
      Left = 666
      ExplicitLeft = 650
    end
    inherited btnExcluir: TImage
      Left = 746
      Top = 2
      ExplicitLeft = 730
      ExplicitTop = 2
    end
    inherited btnLimpar: TImage
      Left = 901
      Top = 2
      ExplicitLeft = 885
      ExplicitTop = 2
    end
    inherited btnSair: TImage
      Left = 1056
      Top = 1
      ExplicitLeft = 1040
      ExplicitTop = 1
    end
    inherited lbExcluir: TLabel
      Left = 823
      ExplicitLeft = 807
    end
    inherited lbLimpar: TLabel
      Left = 974
      ExplicitLeft = 958
    end
    inherited lbSair: TLabel
      Left = 1152
      ExplicitLeft = 1136
    end
  end
  object pcAgendamento: TPageControl [3]
    Left = 0
    Top = 101
    Width = 1209
    Height = 589
    ActivePage = tbConsultar
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Lucida Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = pcAgendamentoChange
    object tbConsultar: TTabSheet
      Caption = 'Consultar'
      object pnConsultar: TPanel
        Left = 0
        Top = 0
        Width = 1201
        Height = 556
        Align = alClient
        BevelOuter = bvLowered
        Color = 15395562
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          1201
          556)
        object sbConsultar: TScrollBox
          Left = 1
          Top = 1
          Width = 1199
          Height = 554
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          DesignSize = (
            1197
            552)
          object gbConsultaFiltro: TGroupBox
            Left = 16
            Top = 7
            Width = 1157
            Height = 230
            Caption = ' Filtro de Consulta '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Lucida Sans'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            DesignSize = (
              1157
              230)
            object lbConsultaDataInicio: TLabel
              Left = 42
              Top = 115
              Width = 73
              Height = 19
              Caption = 'Data In'#237'cio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbConsultaConsultor: TLabel
              Left = 47
              Top = 32
              Width = 68
              Height = 19
              Caption = 'Consultor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbConsultaCliente: TLabel
              Left = 67
              Top = 73
              Width = 48
              Height = 19
              Caption = 'Cliente'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbConsultaConsultorObrigatorio: TLabel
              Left = 347
              Top = 36
              Width = 74
              Height = 13
              Caption = '(Obrigat'#243'rio)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object lbConsultaClienteOpcional: TLabel
              Left = 347
              Top = 77
              Width = 59
              Height = 13
              Caption = '(Opcional)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object lbConsultaPeriodo: TLabel
              Left = 60
              Top = 153
              Width = 55
              Height = 19
              Caption = 'Periodo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbConsultaPeriodoDias: TLabel
              Left = 347
              Top = 153
              Width = 40
              Height = 19
              Caption = 'Dia(s)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object dtConsultaDataIniciol: TDateTimePicker
              Left = 121
              Top = 110
              Width = 220
              Height = 27
              Date = 43357.868481759260000000
              Time = 43357.868481759260000000
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object cbConsultaConsultor: TComboBox
              Left = 121
              Top = 29
              Width = 220
              Height = 27
              Style = csDropDownList
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ItemIndex = 0
              ParentFont = False
              TabOrder = 1
              Text = 'Selecione'
              Items.Strings = (
                'Selecione')
            end
            object cbConsultaCliente: TComboBox
              Left = 121
              Top = 70
              Width = 220
              Height = 27
              Style = csDropDownList
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ItemIndex = 0
              ParentFont = False
              TabOrder = 2
              Text = 'Selecione'
              Items.Strings = (
                'Selecione')
            end
            object btnConsultaFiltrar: TBitBtn
              Left = 121
              Top = 183
              Width = 115
              Height = 35
              Cursor = crHandPoint
              Anchors = [akRight, akBottom]
              Caption = '&Filtrar'
              DoubleBuffered = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              NumGlyphs = 2
              ParentDoubleBuffered = False
              ParentFont = False
              TabOrder = 3
              OnClick = btnConsultaFiltrarClick
            end
            object cbConsultaPeriodoDias: TComboBox
              Left = 121
              Top = 150
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
                '07'
                '15'
                '30')
            end
          end
          object sgConsultaResultado: TStringGrid
            Left = 16
            Top = 243
            Width = 1157
            Height = 306
            Anchors = [akLeft, akTop, akBottom]
            DefaultColWidth = 190
            DrawingStyle = gdsGradient
            FixedColor = 11000318
            GradientEndColor = clSilver
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
            PopupMenu = ppAgendamento
            TabOrder = 1
            OnDrawCell = sgConsultaResultadoDrawCell
            RowHeights = (
              24
              24
              24
              24
              24)
          end
        end
        object pnInformacoes: TPanel
          Left = 427
          Top = 13
          Width = 422
          Height = 260
          Anchors = []
          BevelInner = bvLowered
          Color = 15066597
          ParentBackground = False
          TabOrder = 1
          DesignSize = (
            422
            260)
          object gbInformacoes: TGroupBox
            Left = 2
            Top = 2
            Width = 418
            Height = 224
            Align = alTop
            Caption = ' Informa'#231#245'es '
            Color = 14737632
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Lucida Sans'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object lbConsultor: TLabel
              Left = 19
              Top = 26
              Width = 62
              Height = 17
              Caption = 'Consultor:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbCliente: TLabel
              Left = 36
              Top = 49
              Width = 44
              Height = 17
              Caption = 'Cliente:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbData: TLabel
              Left = 48
              Top = 72
              Width = 31
              Height = 17
              Caption = 'Data:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbHorario: TLabel
              Left = 30
              Top = 95
              Width = 49
              Height = 17
              Caption = 'Horario:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbDuracao: TLabel
              Left = 26
              Top = 118
              Width = 53
              Height = 17
              Caption = 'Dura'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbObservacao: TLabel
              Left = 7
              Top = 165
              Width = 74
              Height = 17
              Caption = 'Observa'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbTermino: TLabel
              Left = 26
              Top = 142
              Width = 53
              Height = 17
              Caption = 'Termino:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object btnFechar: TButton
            Left = 344
            Top = 235
            Width = 75
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = 'Fechar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = btnFecharClick
            ExplicitTop = 192
          end
        end
      end
    end
    object tbCadastrar: TTabSheet
      Caption = 'Cadastrar'
      ImageIndex = 1
      object pnCadastrar: TPanel
        Left = 0
        Top = 0
        Width = 1201
        Height = 556
        Align = alClient
        BevelOuter = bvLowered
        Color = 15395562
        ParentBackground = False
        TabOrder = 0
        object sbCadastro: TScrollBox
          Left = 1
          Top = 1
          Width = 1199
          Height = 554
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object gbCadastroConsultor: TGroupBox
            Left = 15
            Top = 3
            Width = 722
            Height = 110
            Caption = ' Consultor '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Lucida Sans'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object lbCadastroNomeConsultor: TLabel
              Left = 156
              Top = 31
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
            object lbCadatroSegmento: TLabel
              Left = 402
              Top = 32
              Width = 72
              Height = 19
              Caption = 'Segmento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbCadastroCodigoConsultor: TLabel
              Left = 17
              Top = 32
              Width = 52
              Height = 19
              Caption = 'C'#243'digo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object cbCadastroNomeConsultor: TComboBox
              Left = 156
              Top = 56
              Width = 220
              Height = 27
              Style = csDropDownList
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ItemIndex = 0
              ParentFont = False
              TabOrder = 0
              Text = 'Selecione'
              OnChange = cbCadastroNomeConsultorChange
              Items.Strings = (
                'Selecione')
            end
            object edCadastroSegmentoConsultor: TEdit
              Left = 402
              Top = 57
              Width = 304
              Height = 25
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object edCadastroCodigoConsultor: TIntegerEdit
              Left = 17
              Top = 57
              Width = 121
              Height = 25
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnExit = edCodigoExit
              OnKeyDown = edCodigoKeyDown
              IntegerNumber = 0
            end
          end
          object gbCadastroCliente: TGroupBox
            Left = 15
            Top = 131
            Width = 722
            Height = 110
            Caption = ' Cliente '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Lucida Sans'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object lbCadastroCliente: TLabel
              Left = 156
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
            object lbCadastroClienteCPF: TLabel
              Left = 402
              Top = 32
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
            object lbCadastroCodigoCliente: TLabel
              Left = 17
              Top = 32
              Width = 52
              Height = 19
              Caption = 'C'#243'digo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object cbCadastroNomeCliente: TComboBox
              Left = 156
              Top = 57
              Width = 220
              Height = 27
              Style = csDropDownList
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ItemIndex = 0
              ParentFont = False
              TabOrder = 0
              Text = 'Selecione'
              OnChange = cbCadastroNomeClienteChange
              Items.Strings = (
                'Selecione')
            end
            object edCadastroClienteCPF: TMaskEdit
              Left = 402
              Top = 57
              Width = 304
              Height = 25
              Enabled = False
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
            object edCadastroCodigoCliente: TIntegerEdit
              Left = 17
              Top = 57
              Width = 121
              Height = 25
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnExit = edCodigoExit
              OnKeyDown = edCodigoKeyDown
              IntegerNumber = 0
            end
          end
          object gbCadastroAgendamento: TGroupBox
            Left = 15
            Top = 263
            Width = 722
            Height = 227
            Caption = ' Agendamento '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Lucida Sans'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object lbCadastroDataInicio: TLabel
              Left = 16
              Top = 32
              Width = 73
              Height = 19
              Caption = 'Data In'#237'cio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbCadastroHorario: TLabel
              Left = 156
              Top = 32
              Width = 53
              Height = 19
              Caption = 'Horario'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbCadastroAsteristicoDataInicio: TLabel
              Left = 95
              Top = 32
              Width = 7
              Height = 19
              Caption = '*'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbCadastroAsteristicoHorario: TLabel
              Left = 215
              Top = 32
              Width = 7
              Height = 19
              Caption = '*'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbCadastroDuracao: TLabel
              Left = 260
              Top = 32
              Width = 58
              Height = 19
              Caption = 'Dura'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbCadastroAsteristicoDuracao: TLabel
              Left = 331
              Top = 32
              Width = 7
              Height = 19
              Caption = '*'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbCadastroTermino: TLabel
              Left = 363
              Top = 32
              Width = 58
              Height = 19
              Caption = 'Termino'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbCadastroAsteristicoTermino: TLabel
              Left = 427
              Top = 32
              Width = 7
              Height = 19
              Caption = '*'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbCadastroDataFinal: TLabel
              Left = 478
              Top = 32
              Width = 69
              Height = 19
              Caption = 'Data Final'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbCadastroAsteristicoDataFinal: TLabel
              Left = 553
              Top = 32
              Width = 7
              Height = 19
              Caption = '*'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbCadastroObservacao: TLabel
              Left = 16
              Top = 96
              Width = 96
              Height = 19
              Caption = 'Oberserva'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object lbCadastroAsteristicoObservasao: TLabel
              Left = 118
              Top = 96
              Width = 7
              Height = 19
              Caption = '*'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
            end
            object dtCadastroDataInicio: TDateTimePicker
              Left = 16
              Top = 57
              Width = 121
              Height = 27
              Date = 43357.868481759260000000
              Time = 43357.868481759260000000
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnChange = dtCadastroDataInicioChange
            end
            object dtCadastroDataFinal: TDateTimePicker
              Left = 474
              Top = 57
              Width = 121
              Height = 27
              Date = 43357.868481759260000000
              Time = 43357.868481759260000000
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object mmCadastroObservacao: TMemo
              Left = 16
              Top = 121
              Width = 579
              Height = 89
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object edCadastroHorarioTermino: TDateTimePicker
              Left = 363
              Top = 57
              Width = 89
              Height = 27
              Date = 43361.900694444440000000
              Time = 43361.900694444440000000
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              Kind = dtkTime
              ParentFont = False
              TabOrder = 3
            end
            object cbCadastroDuracao: TComboBox
              Left = 260
              Top = 57
              Width = 78
              Height = 27
              Style = csDropDownList
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnExit = cbCadastroDuracaoExit
              Items.Strings = (
                '00:15'
                '00:30'
                '01:00')
            end
            object cbCadastroHorarioInicial: TComboBox
              Left = 156
              Top = 57
              Width = 78
              Height = 27
              Style = csDropDownList
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Microsoft JhengHei UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              Items.Strings = (
                '00:15'
                '00:30'
                '01:00')
            end
          end
        end
      end
    end
  end
  inherited pmOpcoes: TPopupMenu
    Left = 720
    Top = 48
  end
  object ppAgendamento: TPopupMenu
    Left = 768
    Top = 48
    object piMarcar: TMenuItem
      Caption = 'Marcar'
      OnClick = piMarcarClick
    end
    object piDesmarcar: TMenuItem
      Caption = 'Desmarcar'
      OnClick = piDesmarcarClick
    end
    object Informaes1: TMenuItem
      Caption = 'Informa'#231#245'es'
      OnClick = Informaes1Click
    end
  end
end
