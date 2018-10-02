object FrmNotificacao: TFrmNotificacao
  Left = 0
  Top = 0
  Caption = 'CRM - Notifica'#231#227'o'
  ClientHeight = 689
  ClientWidth = 913
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgNotificacao: TPageControl
    Left = 0
    Top = 0
    Width = 913
    Height = 689
    ActivePage = tbCliente
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = pgNotificacaoChange
    object tbConsultor: TTabSheet
      Caption = 'Consultor(es)'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbEmail: TGroupBox
        Left = 0
        Top = 0
        Width = 905
        Height = 653
        Align = alClient
        Caption = ' E-mail '
        Color = clMenuBar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          905
          653)
        object lbAnexo: TLabel
          Left = 71
          Top = 393
          Width = 43
          Height = 19
          Caption = 'Anexo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbAssunto: TLabel
          Left = 58
          Top = 114
          Width = 56
          Height = 19
          Caption = 'Assunto'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbMensagem: TLabel
          Left = 36
          Top = 151
          Width = 78
          Height = 19
          Caption = 'Mensagem'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbPara: TLabel
          Left = 84
          Top = 35
          Width = 31
          Height = 19
          Caption = 'Para'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbRelatorio: TLabel
          Left = 19
          Top = 199
          Width = 88
          Height = 19
          Caption = 'Relat'#243'rio(s):'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object btnAnexo: TButton
          Left = 465
          Top = 392
          Width = 75
          Height = 25
          Caption = 'Anexo'
          TabOrder = 0
          OnClick = btnAnexoClick
        end
        object cbLista: TComboBox
          Left = 121
          Top = 32
          Width = 418
          Height = 27
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = cbListaChange
        end
        object edtAnexo: TEdit
          Left = 120
          Top = 392
          Width = 339
          Height = 28
          Color = clScrollBar
          TabOrder = 2
        end
        object edtAssunto: TEdit
          Left = 120
          Top = 111
          Width = 420
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object edtPara: TEdit
          Left = 121
          Top = 74
          Width = 420
          Height = 27
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object memCorpo: TMemo
          Left = 120
          Top = 148
          Width = 420
          Height = 238
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object pnBotao: TPanel
          Left = 120
          Top = 427
          Width = 420
          Height = 58
          Color = 10049851
          ParentBackground = False
          TabOrder = 6
          object BtnEnviar: TSpeedButton
            Left = 1
            Top = 1
            Width = 418
            Height = 56
            Align = alClient
            Caption = 'Enviar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Microsoft JhengHei UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = BtnEnviarClick
            ExplicitLeft = 17
            ExplicitTop = 3
          end
        end
        object pnBotaoLimpar: TPanel
          Left = 121
          Top = 492
          Width = 420
          Height = 58
          Color = 10049851
          ParentBackground = False
          TabOrder = 7
          object btnLimpar: TSpeedButton
            Left = 1
            Top = 1
            Width = 418
            Height = 56
            Align = alClient
            Caption = 'Limpar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Microsoft JhengHei UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnLimparClick
            ExplicitLeft = 0
            ExplicitTop = 9
          end
        end
        object btnUmDia: TButton
          Tag = 1
          Left = 19
          Top = 224
          Width = 95
          Height = 25
          Caption = '01 Dia(s)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = btnUmDiaClick
        end
        object btnSeteDia: TButton
          Tag = 7
          Left = 19
          Top = 255
          Width = 95
          Height = 25
          Caption = '07 Dia(s)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = btnUmDiaClick
        end
        object btnQuizeDia: TButton
          Tag = 15
          Left = 19
          Top = 286
          Width = 95
          Height = 25
          Caption = '15 Dia(s)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = btnUmDiaClick
        end
        object btnTrintaDia: TButton
          Tag = 30
          Left = 19
          Top = 317
          Width = 95
          Height = 25
          Caption = '30 Dia(s)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnClick = btnUmDiaClick
        end
        object pnSair: TPanel
          Left = 121
          Top = 557
          Width = 420
          Height = 58
          Color = 10049851
          ParentBackground = False
          TabOrder = 12
          object btnSair: TSpeedButton
            Left = 1
            Top = 1
            Width = 418
            Height = 56
            Align = alClient
            Caption = 'Sair'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Microsoft JhengHei UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnSairClick
            ExplicitLeft = 0
            ExplicitTop = 9
          end
        end
        object pnAguardeColsultores: TPanel
          Left = 717
          Top = 21
          Width = 185
          Height = 41
          Anchors = []
          Caption = 'Aguarde!'
          Color = 4868682
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 13
        end
      end
    end
    object tbCliente: TTabSheet
      Caption = 'Cliente(s)'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbEmailCliente: TGroupBox
        Left = 0
        Top = 0
        Width = 905
        Height = 653
        Align = alClient
        Caption = ' E-mail '
        Color = clMenuBar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Microsoft JhengHei UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 152
        ExplicitTop = 32
        ExplicitWidth = 569
        ExplicitHeight = 577
        DesignSize = (
          905
          653)
        object lbAnexoCliente: TLabel
          Left = 71
          Top = 393
          Width = 43
          Height = 19
          Caption = 'Anexo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbAssuntoCliente: TLabel
          Left = 58
          Top = 114
          Width = 56
          Height = 19
          Caption = 'Assunto'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbMensagemCliente: TLabel
          Left = 36
          Top = 151
          Width = 78
          Height = 19
          Caption = 'Mensagem'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbconsultor: TLabel
          Left = 47
          Top = 35
          Width = 68
          Height = 19
          Caption = 'Consultor'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object lbAvisarTodos: TLabel
          Left = 129
          Top = 451
          Width = 87
          Height = 19
          Caption = 'Avisar todos'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object btnAnexoCliente: TButton
          Left = 465
          Top = 392
          Width = 75
          Height = 25
          Caption = 'Anexo'
          TabOrder = 0
          OnClick = btnAnexoClick
        end
        object cbClienteConsultor: TComboBox
          Left = 121
          Top = 32
          Width = 418
          Height = 27
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edAnexoCliente: TEdit
          Left = 120
          Top = 392
          Width = 339
          Height = 28
          Color = clScrollBar
          TabOrder = 2
        end
        object edtClienteAssunto: TEdit
          Left = 120
          Top = 111
          Width = 420
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'Consulta marcada'
        end
        object memClienteCorpo: TMemo
          Left = 120
          Top = 148
          Width = 420
          Height = 238
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          Lines.Strings = (
            'Ol'#225','
            'Gostariamos de lembrar que amanh'#227' as 09:30hrs voc'#234' '
            'tem uma consulta marcada.'
            ''
            'Atenciosamente,'
            'Equipe CRM Query.')
          ParentFont = False
          TabOrder = 4
        end
        object pnLimparCliente: TPanel
          Left = 121
          Top = 492
          Width = 420
          Height = 58
          Color = 10049851
          ParentBackground = False
          TabOrder = 5
          object btnLimparCliente: TSpeedButton
            Left = 1
            Top = 1
            Width = 418
            Height = 56
            Align = alClient
            Caption = 'Limpar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Microsoft JhengHei UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnLimparClienteClick
            ExplicitLeft = 0
            ExplicitTop = 9
          end
        end
        object btnUmDiaCliente: TButton
          Tag = 1
          Left = 226
          Top = 449
          Width = 95
          Height = 25
          Caption = '01 Dia(s)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = btnEnviarClienteClick
        end
        object btnSeteDiasCliente: TButton
          Tag = 7
          Left = 327
          Top = 449
          Width = 95
          Height = 25
          Caption = '07 Dia(s)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = btnEnviarClienteClick
        end
        object btnQuizeDiasCliente: TButton
          Tag = 15
          Left = 428
          Top = 449
          Width = 95
          Height = 25
          Caption = '15 Dia(s)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Microsoft JhengHei UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = btnEnviarClienteClick
        end
        object pnSairCliente: TPanel
          Left = 121
          Top = 557
          Width = 420
          Height = 58
          Color = 10049851
          ParentBackground = False
          TabOrder = 9
          object btnSairCliente: TSpeedButton
            Left = 1
            Top = 1
            Width = 418
            Height = 56
            Align = alClient
            Caption = 'Sair'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Microsoft JhengHei UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnSairClick
            ExplicitLeft = 0
            ExplicitTop = 9
          end
        end
        object pnAguardeCliente: TPanel
          Left = 717
          Top = 21
          Width = 185
          Height = 41
          Anchors = []
          Caption = 'Aguarde!'
          Color = 4868682
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 10
        end
      end
    end
  end
end
