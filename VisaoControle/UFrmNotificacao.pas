unit UFrmNotificacao;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,

  //Units Necessárias
  IniFiles,
  IdComponent,
  IdTCPConnection,
  IdTCPClient,
  IdHTTP,
  IdBaseComponent,
  IdMessage,
  IdExplicitTLSClientServerBase,
  IdMessageClient,
  IdSMTPBase,
  IdSMTP,
  IdIOHandler,
  IdIOHandlerSocket,
  IdIOHandlerStack,
  IdSSL,
  IdSSLOpenSSL,
  IdAttachmentFile,
  IdText, pngimage, ExtCtrls, Buttons
  , URegraCRUDConsultor
  , URegraCRUDCliente
  , URegraCRUDAgendamento, ComCtrls
  ;

type
  TFrmNotificacao = class(TForm)
    pgNotificacao: TPageControl;
    tbConsultor: TTabSheet;
    gbEmail: TGroupBox;
    lbAnexo: TLabel;
    lbAssunto: TLabel;
    lbMensagem: TLabel;
    lbPara: TLabel;
    lbRelatorio: TLabel;
    btnAnexo: TButton;
    cbLista: TComboBox;
    edtAnexo: TEdit;
    edtAssunto: TEdit;
    edtPara: TEdit;
    memCorpo: TMemo;
    pnBotao: TPanel;
    BtnEnviar: TSpeedButton;
    pnBotaoLimpar: TPanel;
    btnLimpar: TSpeedButton;
    btnUmDia: TButton;
    btnSeteDia: TButton;
    btnQuizeDia: TButton;
    btnTrintaDia: TButton;
    pnSair: TPanel;
    btnSair: TSpeedButton;
    tbCliente: TTabSheet;
    gbEmailCliente: TGroupBox;
    lbAnexoCliente: TLabel;
    lbAssuntoCliente: TLabel;
    lbMensagemCliente: TLabel;
    lbconsultor: TLabel;
    lbAvisarTodos: TLabel;
    btnAnexoCliente: TButton;
    cbClienteConsultor: TComboBox;
    edAnexoCliente: TEdit;
    edtClienteAssunto: TEdit;
    memClienteCorpo: TMemo;
    pnLimparCliente: TPanel;
    btnLimparCliente: TSpeedButton;
    btnUmDiaCliente: TButton;
    btnSeteDiasCliente: TButton;
    btnQuizeDiasCliente: TButton;
    pnSairCliente: TPanel;
    btnSairCliente: TSpeedButton;
    pnAguardeColsultores: TPanel;
    pnAguardeCliente: TPanel;
    procedure btnAnexoClick(Sender: TObject);
    procedure BtnEnviarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbListaChange(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnUmDiaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure pgNotificacaoChange(Sender: TObject);
    procedure btnEnviarClienteClick(Sender: TObject);
    procedure btnLimparClienteClick(Sender: TObject);
  private
    FRegreCRUDConsultor   : TRegraCRUDConsultor;
    FRegraCRUDCliente     : TRegraCRUDCliente;
    FRegraCRUDAgendamento : TRegraCRUDAgendamento;

    function EnviarEmail(const AAssunto, ADestino, AAnexo: String; ACorpo: TStrings): Boolean;

    procedure ExibirRelatorio(QtdDias: Integer);

    procedure CarregaPara(Componente: TObject);
    procedure Wait(millisecs: Integer);

  public
    function RetornaTempo(Tempo: TTime): String;
    function RetornaData(Data: TDate) : String;

  end;

var
  FrmNotificacao: TFrmNotificacao;

implementation

{$R *.dfm}

{ TFrmNotificacao }

uses
    UFrmAgendamento
  , UUtilitarios
  , Generics.Collections
  , UEntidade
  , UMensagens
  , UDialogo
  , UConsultor
  , UAgendamento
  , UCliente
  ;

procedure TFrmNotificacao.btnAnexoClick(Sender: TObject);
begin
  with TOpenDialog.Create(Self) do
    if Execute then
      edtAnexo.Text := FileName;
end;

procedure TFrmNotificacao.BtnEnviarClick(Sender: TObject);
begin
  pnAguardeColsultores.Visible:= True;
  Wait(1800);
  pnAguardeColsultores.Visible:= False;
  if EnviarEmail(edtAssunto.Text, edtPara.Text, edtAnexo.Text, memCorpo.Lines) then
  begin
  Application.MessageBox(pChar('Enviado com sucesso!'), pChar('Aviso'), MB_ICONINFORMATION);

  btnLimpar.Click;
  end
  else
  begin
  ShowMessage('Não foi possível enviar o e-mail!');
  end;
end;

procedure TFrmNotificacao.btnEnviarClienteClick(Sender: TObject);
const
  CNT_CABECALHO_NOME_CLIENTE = 'Olá, %s';
  CNT_CORPO_TEXTO            = 'Gostariamos de lembra-lo que no dia %s as %s horas você tem uma consulta marcada.';
  CNT_ASSINATURA_TEXTO       = 'Atenciosamente, Equipe CRM Query.';

  CNT_ASSUNTO                = 'Consulta Marcada';
var
  AgendaConsultor : TArray<TAgendamento>;

  ID              : Integer;
  Consultor       : String;

  CLIENTE         : TCliente;
  NOME_CLIENTE    : String;

  DataConsulta    : String;
  HorarioConsulta : String;

  QtdDias         : Integer;
  Indice          : Integer;

  EMAIL           : String;
  ASSUNTO         : String;

begin
try
  pnAguardeCliente.Visible:= True;
  Wait(1800);
  pnAguardeCliente.Visible:= False;

    //Verifica se foi selecionado o consultor:
  if cbClienteConsultor.ItemIndex = -1 then
  begin
    raise EValidacaoNegocio.Create(STR_NOTIFICAO_NAO_SELECIONOU_CONSULTOR);
  end;

  QtdDias:= TButton(Sender).Tag;

  Consultor       := TCONSULTOR(cbClienteConsultor.Items.Objects[cbClienteConsultor.ItemIndex]).NOME;
  ID              := TCONSULTOR(cbClienteConsultor.Items.Objects[cbClienteConsultor.ItemIndex]).ID;
  AgendaConsultor := FRegraCRUDAgendamento.RetornaAgendamentosConsultor(Consultor, ID, Now, QtdDias);
  //Cabeçalho;
  edtAssunto.Text := CNT_ASSUNTO;

  //Notificar cliente por cliente:
  for Indice := Low(AgendaConsultor) to High(AgendaConsultor) do
  begin
    memClienteCorpo.Clear;
    CLIENTE       := FRegraCRUDCliente.RetornaCliente(TAgendamento(AgendaConsultor[Indice]).ID_CLIENTE);
    EMAIL         := Cliente.EMAIL;
    NOME_CLIENTE  := Cliente.NOME;
    ASSUNTO       := edtAssunto.Text;

    memClienteCorpo.Lines.Add(Format(CNT_CABECALHO_NOME_CLIENTE, [NOME_CLIENTE]));

    DataConsulta   := RetornaData(TAGENDAMENTO(AgendaConsultor[Indice]).DATA_INICIO);
    HorarioConsulta:= RetornaTempo(TAGENDAMENTO(AgendaConsultor[Indice]).HORARIO_INICIO);

    memClienteCorpo.Lines.Add(Format(CNT_CORPO_TEXTO, [DataConsulta, HorarioConsulta]));
    memClienteCorpo.Lines.Add(CNT_ASSINATURA_TEXTO);

    if EMAIL <> EmptyStr then
    begin
      if EnviarEmail(ASSUNTO, EMAIL, edtAnexo.Text, memClienteCorpo.Lines) then
      begin

      end;
    end;
  end;

  Application.MessageBox(pChar('Enviado(s) com sucesso!'), pChar('Aviso'), MB_ICONINFORMATION);
except
  on E: Exception do
  begin
    TDialogo.Excecao(E);
  end;
end;

end;

procedure TFrmNotificacao.btnLimparClick(Sender: TObject);
begin
  //Limpar Campos:
  cbLista.ItemIndex:= -1;
  edtPara.Clear;
  edtAssunto.Text:= '';
  memCorpo.Clear;
end;

procedure TFrmNotificacao.btnLimparClienteClick(Sender: TObject);
begin
  edtClienteAssunto.Clear;
  memClienteCorpo.Clear;
end;

procedure TFrmNotificacao.btnSairClick(Sender: TObject);
begin
  FrmNotificacao.Destroy;
end;

procedure TFrmNotificacao.btnUmDiaClick(Sender: TObject);
begin
  memCorpo.Clear;
  ExibirRelatorio(TButton(Sender).Tag);
end;

procedure TFrmNotificacao.CarregaPara(Componente: TObject);
var
  loCONSULTOR : TCONSULTOR;
begin
  try
    TComboBox(Componente).Items.Clear;

    for loCONSULTOR in FRegreCRUDConsultor.RetornaConsultores do
    begin
      TComboBox(Componente).AddItem(loCONSULTOR.NOME, loCONSULTOR);
    end;
  except
    on E: Exception do
      begin
        TDialogo.Excecao(E);
      end;
  end;
end;

procedure TFrmNotificacao.cbListaChange(Sender: TObject);
begin
  edtPara.Text:= TCONSULTOR(cbLista.Items.Objects[cbLista.ItemIndex]).EMAIL;
  edtAssunto.SetFocus;
end;

function TFrmNotificacao.EnviarEmail(const AAssunto, ADestino, AAnexo: String;
  ACorpo: TStrings): Boolean;
var
  IniFile              : TIniFile;
  sFrom                : String;
  sBccList             : String;
  sHost                : String;
  iPort                : Integer;
  sUserName            : String;
  sPassword            : String;

  idMsg                : TIdMessage;
  idText               : TIdText;
  idSMTP               : TIdSMTP;
  idSSLIOHandlerSocket : TIdSSLIOHandlerSocketOpenSSL;
begin
  IniFile := nil;
  iPort   := 0;
  try
    try
      //Criação e leitura do arquivo INI com as configurações
      IniFile                          := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini');
      sFrom                            := IniFile.ReadString('Email' , 'From'     , sFrom);
      sBccList                         := IniFile.ReadString('Email' , 'BccList'  , sBccList);
      sHost                            := IniFile.ReadString('Email' , 'Host'     , sHost);
      iPort                            := IniFile.ReadInteger('Email', 'Port'     , iPort);
      sUserName                        := IniFile.ReadString('Email' , 'UserName' , sUserName);
      sPassword                        := IniFile.ReadString('Email' , 'Password' , sPassword);

      //Configura os parâmetros necessários para SSL
      IdSSLIOHandlerSocket                   := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
      IdSSLIOHandlerSocket.SSLOptions.Mode  := sslmClient;

      //Variável referente a mensagem
      idMsg                            := TIdMessage.Create(Self);
      idMsg.CharSet                    := 'utf-8';
      idMsg.Encoding                   := meMIME;
      idMsg.From.Name                  := 'CRM Query';
      idMsg.From.Address               := sFrom;
      idMsg.Priority                   := mpNormal;
      idMsg.Subject                    := AAssunto;  //Assunto

      //Add Destinatário(s)
      idMsg.Recipients.Add;
      idMsg.Recipients.EMailAddresses := ADestino;  //e-mail do destinatário
//      idMsg.CCList.EMailAddresses      := 'teste@teste.com.br';
//      idMsg.BccList.EMailAddresses    := sBccList;
//      idMsg.BccList.EMailAddresses    := 'teste@teste.com.br'; //Cópia Oculta

      //Variável do texto
      idText := TIdText.Create(idMsg.MessageParts);
      idText.Body.Add(ACorpo.Text);
      idText.ContentType := 'text/html; text/plain; charset=iso-8859-1';

      //Prepara o Servidor
      idSMTP                           := TIdSMTP.Create(Self);
      idSMTP.IOHandler                 := IdSSLIOHandlerSocket;
      idSMTP.UseTLS                    := utUseImplicitTLS;
      idSMTP.AuthType                  := satDefault;
      idSMTP.Host                      := sHost;
      idSMTP.AuthType                  := satDefault;
      idSMTP.Port                      := iPort;
      idSMTP.Username                  := sUserName;
      idSMTP.Password                  := sPassword;

      //Conecta e Autentica
      idSMTP.Connect;
      idSMTP.Authenticate;

      if AAnexo <> EmptyStr then
        if FileExists(AAnexo) then
          TIdAttachmentFile.Create(idMsg.MessageParts,  '');

      //Se a conexão foi bem sucedida, envia a mensagem
      if idSMTP.Connected then
      begin
        try
          IdSMTP.Send(idMsg);
        except on E:Exception do
          begin
            ShowMessage('Erro ao tentar enviar: ' + E.Message);
          end;
        end;
      end;

      //Depois de tudo pronto, desconecta do servidor SMTP
      if idSMTP.Connected then
        idSMTP.Disconnect;

      Result := True;
    finally
      if Assigned(IniFile) then
      begin
        IniFile.Free;
      end;

      UnLoadOpenSSLLibrary;

      FreeAndNil(idMsg);
      FreeAndNil(idSSLIOHandlerSocket);
      FreeAndNil(idSMTP);
    end;
  except on e:Exception do
    begin
      Result := False;
    end;
  end;
end;

procedure TFrmNotificacao.ExibirRelatorio(QtdDias: Integer);
const
  CNT_CABECALHO_TEXTO             = 'Olá,';
  CNT_CABECALHO_TEXTO_RELATORIO   = 'Segue o relatório de agendamentos no periodo de %s à %s:';
  CNT_ESPACAMENTO_LINHA = '------------------------------------------------';
  CNT_PULA_LINHA        = '   ';

  CNT_ASSUNTO                  = 'RELATÓRIO DE AGENDAMENTOS';

  CNT_NOME_CLIENTE             = 'CLIENTE..............................: ';
  CNT_FONE_CLIENTE             = 'FONE...................................: ';
  CNT_DATA_INICIO_CLIENTE      = 'DATA....................................: ';
  CNT_HORARIO_INICIO_CLIENTE   = 'HORÁRIO INÍCIO.........: ';
  CNT_DURACAO_CLIENTE          = 'DURAÇÃO........................: ';
  CNT_HORARIO_TERMINO_CLIENTE  = 'HORÁRIO TERMINO.: ';
  CNT_OBSERVACAO_CLIENTE       = 'OBSERVAÇÃO...............: ';
var
  AgendaConsultor : TArray<TAgendamento>;
  loAGENDAMENTO   : TAgendamento;

  ID              : Integer;
  Consultor       : String;

  Cliente         : TCliente;

begin
    //Verifica se foi selecionado o consultor:
  if cbLista.ItemIndex = -1 then
  begin
    raise EValidacaoNegocio.Create(STR_NOTIFICAO_NAO_SELECIONOU_CONSULTOR);
  end;

  Consultor       := TCONSULTOR(cbLista.Items.Objects[cbLista.ItemIndex]).NOME;
  ID              := TCONSULTOR(cbLista.Items.Objects[cbLista.ItemIndex]).ID;
  AgendaConsultor := FRegraCRUDAgendamento.RetornaAgendamentosConsultor(Consultor, ID, Now+1, QtdDias);

  //Cabeçalho;
  edtAssunto.Text := CNT_ASSUNTO;

  memCorpo.Lines.Add(CNT_CABECALHO_TEXTO);
  memCorpo.Lines.Add(Format(CNT_CABECALHO_TEXTO_RELATORIO, [DateToStr(Now+1), DateToStr(Now+QtdDias)]));

  for loAGENDAMENTO in  AgendaConsultor do
  begin
    memCorpo.Lines.Add(CNT_PULA_LINHA);

    memCorpo.Lines.Add(CNT_NOME_CLIENTE + loAGENDAMENTO.NOME_CLIENTE);
    memCorpo.Lines.Add(CNT_PULA_LINHA);

    Cliente:= FRegraCRUDCliente.RetornaCliente(loAGENDAMENTO.ID_CLIENTE);
    memCorpo.Lines.Add(CNT_FONE_CLIENTE + Cliente.CELULAR);
    memCorpo.Lines.Add(CNT_PULA_LINHA);

    memCorpo.Lines.Add(CNT_DATA_INICIO_CLIENTE + DateToStr(loAGENDAMENTO.DATA_INICIO));
    memCorpo.Lines.Add(CNT_PULA_LINHA);

    memCorpo.Lines.Add(CNT_HORARIO_INICIO_CLIENTE + TimeToStr(loAGENDAMENTO.HORARIO_INICIO));
    memCorpo.Lines.Add(CNT_PULA_LINHA);

    memCorpo.Lines.Add(CNT_DURACAO_CLIENTE + TimeToStr(loAGENDAMENTO.DURACAO));
    memCorpo.Lines.Add(CNT_PULA_LINHA);

    memCorpo.Lines.Add(CNT_HORARIO_TERMINO_CLIENTE + TimeToStr(loAGENDAMENTO.HORARIO_TERMINO));
    memCorpo.Lines.Add(CNT_PULA_LINHA);
    memCorpo.Lines.Add(CNT_OBSERVACAO_CLIENTE + loAGENDAMENTO.OBSERVACAO);

    memCorpo.Lines.Add(CNT_PULA_LINHA);
    memCorpo.Lines.Add(CNT_ESPACAMENTO_LINHA);
  end;

end;

procedure TFrmNotificacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FRegreCRUDConsultor);
  FreeAndNil(FRegraCRUDCliente);
  FreeAndNil(FRegraCRUDAgendamento);
  Action := caFree;
end;

procedure TFrmNotificacao.FormCreate(Sender: TObject);
begin
  FRegreCRUDConsultor   := TRegraCRUDConsultor.Create;
  FRegraCRUDCliente     := TRegraCRUDCliente.Create;
  FRegraCRUDAgendamento := TRegraCRUDAgendamento.Create;
end;

procedure TFrmNotificacao.FormShow(Sender: TObject);
begin
  pnAguardeColsultores.Left := (Self.Width - pnAguardeColsultores.Width) div 2;
  pnAguardeColsultores.Top  := (Self.Height - pnAguardeColsultores.Height) div 2;

  pnAguardeCliente.Left := (Self.Width - pnAguardeCliente.Width) div 2;
  pnAguardeCliente.Top  := (Self.Height - pnAguardeCliente.Height) div 2;

  pnAguardeColsultores.Visible := False;
  pnAguardeCliente.Visible     :=False;

  pgNotificacao.ActivePage:= tbConsultor;

  CarregaPara(cbLista);
  CarregaPara(cbClienteConsultor);
end;

procedure TFrmNotificacao.pgNotificacaoChange(Sender: TObject);
begin
  if pgNotificacao.ActivePage = tbCliente then
  begin
    CarregaPara(cbClienteConsultor);
  end;

end;

function TFrmNotificacao.RetornaData(Data: TDate): String;
begin
  Result:= DateToStr(Data);
end;

function TFrmNotificacao.RetornaTempo(Tempo: TTime): String;
begin
   Result:= Copy(TimeToStr(Tempo), 0, 5);
end;

procedure TFrmNotificacao.Wait(millisecs: Integer);
var
  tick: dword;
  AnEvent: THandle;
begin
  AnEvent := CreateEvent(nil, False, False, nil);
  try
    tick := GetTickCount + dword(millisecs);
    while (millisecs > 0) and (MsgWaitForMultipleObjects(1, AnEvent, False, millisecs, QS_ALLINPUT) <> WAIT_TIMEOUT) do begin
      Application.ProcessMessages;
      if Application.Terminated then Exit;
            millisecs := tick - GetTickcount;
    end;
  finally
    CloseHandle(AnEvent);
  end;
end;

end.
