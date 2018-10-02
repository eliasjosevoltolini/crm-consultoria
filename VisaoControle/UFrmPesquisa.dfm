object frmPesquisa: TfrmPesquisa
  Left = 226
  Top = 187
  ActiveControl = cbOpcoes
  Caption = 'Pesquisa'
  ClientHeight = 461
  ClientWidth = 764
  Color = clSilver
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 420
    Width = 764
    Height = 41
    Align = alBottom
    ParentBackground = False
    TabOrder = 3
    DesignSize = (
      764
      41)
    object btnSair: TBitBtn
      Left = 645
      Top = 4
      Width = 115
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = '&Sair'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnSairClick
    end
    object btnConfirmar: TBitBtn
      Left = 529
      Top = 4
      Width = 115
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = '&Confirmar'
      DoubleBuffered = True
      ModalResult = 1
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
  end
  object gbParametros: TGroupBox
    Left = 0
    Top = 43
    Width = 764
    Height = 58
    Align = alTop
    Caption = ' Par'#226'metros '
    Color = 16447476
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object lbOpcao: TLabel
      Left = 19
      Top = 24
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Op'#231#227'o'
    end
    object lbIgualA: TLabel
      Left = 170
      Top = 24
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Igual a'
    end
    object edPesquisa: TEdit
      Left = 210
      Top = 21
      Width = 233
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyDown = dbgClienteKeyDown
      OnKeyUp = edPesquisaKeyUp
    end
    object cbOpcoes: TComboBox
      Left = 57
      Top = 21
      Width = 109
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      Color = clInfoBk
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = cbOpcoesChange
      OnKeyDown = dbgClienteKeyDown
    end
  end
  object pnlCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 43
    Align = alTop
    Color = 11829830
    ParentBackground = False
    TabOrder = 0
    object lbCabecalho: TLabel
      Left = 42
      Top = 6
      Width = 87
      Height = 25
      Caption = 'PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ImCabecalho: TImage
      Left = 6
      Top = 7
      Width = 30
      Height = 30
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF4000000017352474200AECE1CE90000000467414D41
        0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000002
        5A4944415478DAED96BD4B1C4118C66F373101E16C92E28A80A2410FEF829222
        D68A8A4D50E20708B1321045C1786008FE037E1427180949C02E110483E15244
        5038FC0742123FF0F251042C2CAC140B0DECFA7BC9488EBBF56E675DD6C68587
        7776679EE77D76E6DD993542977C195706BC126DDBBE013A680AEE833BAA6B17
        7C011F0DC3109CF86EC0B2AC4EC224E2778B98FC45786E9AE6B22F0610BC0626
        483CA6EEBF13E6C11AF8A386558066D0CFB87BEAD91418E7DEBA9001DE7C5A92
        93F898DB67B4DF3A892A7326784A73863137C504F1856703247F84C00744654D
        5B99D67597BC46C20A5CA9997678296D03AAE0B611A9220E20F24673E606E1BE
        929A20D682BF5A0610E881B488C006B1FEBC692FF002523B5FE1C589DDBCC092
        AE8105C8BD904720CFEA24CFD2909A9941E33D1A8F750D642057438E41DEF668
        208EC6061A3FD0A8D1357000390CB90CF2A1470361340ED03844A34CD7C011E4
        D2CB34F01B7225E438E42D8F06CE9620834654D7801F45388A46128D7768F4E9
        1AE885BC00799358E7F133FC062FE6E93384745D6D22E51E37A221B873707F8A
        09ED8D4889B4CBF1AAB6E2364CA45DF29A089F410990ADF85376BF6B03248EA8
        25B8A50EA304EDD7050E2399F6019A49750E4C907C3C779CDB2590E46984A2C4
        7DE26DF55CBE08398E5743FF8FE372D0029EC8BECF183BF4EF2494E3D8D63690
        937C87D8487C40D7ACD44411AEFC902472A7DDB501A7E4604FF5496176D17C08
        1A4004C8729CFD922D3336955D705A060A25F7F3723410547247034126CF3310
        74F23C036C1AC3247C1954F23C035926968248EE6820E8EBCAC029566C9F30BC
        C877A10000000049454E44AE426082}
      Proportional = True
    end
  end
  object dbgCliente: TDBGrid
    Left = 0
    Top = 101
    Width = 764
    Height = 319
    Align = alClient
    Color = clBtnFace
    FixedColor = clGradientActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Microsoft JhengHei UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgClienteDblClick
    OnKeyDown = dbgClienteKeyDown
  end
end
