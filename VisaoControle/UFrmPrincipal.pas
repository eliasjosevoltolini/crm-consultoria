unit UFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus
  , StdCtrls, ComCtrls, pngimage, ExtCtrls
  , UFrmUsuario
  , UFrmConsultor
  , UFrmCliente
  , UFrmNotificacao
  , UFrmAgendamento, jpeg, Buttons
  ;

type
  TFrmPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    miArquivos: TMenuItem;
    sbPrincipal: TStatusBar;
    miExibir: TMenuItem;
    miCadastroUsurios: TMenuItem;
    miCadastroConsultor: TMenuItem;
    miCadastroCliente: TMenuItem;
    miAgendamento: TMenuItem;
    miSair: TMenuItem;
    miLogoff: TMenuItem;
    pnAcessoRapido: TPanel;
    lbAcessoRapido: TLabel;
    btnSair: TSpeedButton;
    btnAgendamentoCadastrar: TSpeedButton;
    btnAgendamentoConsultar: TSpeedButton;
    btnClienteCadastro: TSpeedButton;
    btnConfiguracaoSistema: TSpeedButton;
    btnConsultorCadastro: TSpeedButton;
    ImLogoQuery: TImage;
    ImAgendamentos: TImage;
    ImClientes: TImage;
    ImNotificacoes: TImage;
    ImConsultores: TImage;
    ImRelatorios: TImage;
    ImConfiguracoes: TImage;
    pnConfiguracao: TPanel;
    ImUsuario: TImage;
    Label1: TLabel;
    ImLogoff: TImage;
    ImTema: TImage;
    SpeedButton1: TSpeedButton;
    miTemas: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure ImUsuarioClick(Sender: TObject);
    procedure ImConsultorClick(Sender: TObject);
    procedure ImClienteClick(Sender: TObject);
    procedure ImAgendamentosClick(Sender: TObject);
    procedure miSairClick(Sender: TObject);
    procedure miLogoffClick(Sender: TObject);
    procedure ImNotificacaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImConfiguracoesClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnAgendamentoCadastrarClick(Sender: TObject);
    procedure miStyleMenuItemClick(Sender: TObject);
    procedure ImTemaClick(Sender: TObject);
  private
    procedure AtualizaUsuarioLogado;
    procedure FechaFormulariosFilhos;

  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;


implementation

uses
    UDM
  , DB
  , Themes
  , UMensagens
  , UUsuarioLogado
  , UFrmLogin
  , UUsuario
  , UDialogo
  ;

resourcestring
  STR_BANCO_DADOS    = 'Banco de Dados: ';
  STR_USUARIO_LOGADO = 'Usuário: ';

{$R *.dfm}

procedure TFrmPrincipal.ImConfiguracoesClick(Sender: TObject);
begin
  pnConfiguracao.Visible:= True;
end;

procedure TFrmPrincipal.ImAgendamentosClick(Sender: TObject);
begin
  FrmAgendamento:= TFrmAgendamento.Create(Self);
  FrmAgendamento.pcAgendamento.ActivePageIndex:=0;

end;

procedure TFrmPrincipal.ImClienteClick(Sender: TObject);
begin
  FrmCliente:= TFrmCliente.Create(Self);

end;

procedure TFrmPrincipal.ImConsultorClick(Sender: TObject);
begin
  FrmConsultor:= TFrmConsultor.Create(Self);

end;

procedure TFrmPrincipal.ImNotificacaoClick(Sender: TObject);
begin
  FrmNotificacao:= TFrmNotificacao.Create(Self);

end;

procedure TFrmPrincipal.ImTemaClick(Sender: TObject);
begin
  Application.MessageBox(pChar('Em Manutenção!'), pChar(STR_AVISO), MB_OK + MB_ICONEXCLAMATION)
end;

procedure TFrmPrincipal.ImUsuarioClick(Sender: TObject);
var
  senha: String;
  loUSUARIO: TUsuarioLogado;
begin
  senha:=inputbox('Código','Digite a Sua Senha de Acesso','');
  loUSUARIO:= TUsuarioLogado.Unico;

  if loUSUARIO.ValidaLogin(loUSUARIO.USUARIO.NOME, senha) then
  begin
  FrmUsuario:= TFrmUsuario.Create(Self);
  pnConfiguracao.Visible:=False;
  end
  else
  begin
     Application.MessageBox(pChar(STR_USUARIO_SENHA_DIFERENTE), pChar(STR_AVISO), MB_OK + MB_ICONEXCLAMATION);
  end;
end;

procedure TFrmPrincipal.miLogoffClick(Sender: TObject);
begin
  pnConfiguracao.Visible:=False;
  TUsuarioLogado.Logoff;
  Application.CreateForm(TFrmLogin, FrmLogin);
  if FrmLogin.ShowModal = mrYes then
  begin
    FreeAndNil(FrmLogin);

    FechaFormulariosFilhos;
    AtualizaUsuarioLogado;
  end
  else
  begin
    Close;
  end;
end;

procedure TFrmPrincipal.miSairClick(Sender: TObject);
var
 resp:integer;
begin
 resp:= Application.messagebox(pChar(STR_CONFIRMAR_SAIDA_DO_SISTEMA)
                              ,pChar(STR_AVISO)
                              ,MB_ICONEXCLAMATION + MB_YESNOCANCEL + MB_OKCANCEL);

 if resp=6 then application.terminate;
end;

procedure TFrmPrincipal.miStyleMenuItemClick(Sender: TObject);
begin
//  TStyleManager.SetStyle(TMenuItem(Sender).Hint);
end;

procedure TFrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  pnConfiguracao.Visible:= False;
end;

procedure TFrmPrincipal.AtualizaUsuarioLogado;
begin
  sbPrincipal.Panels[1].Text := STR_USUARIO_LOGADO + TUsuarioLogado.USUARIO.NOME;
end;

procedure TFrmPrincipal.btnAgendamentoCadastrarClick(Sender: TObject);
begin
  FrmAgendamento:= TFrmAgendamento.Create(Self);
  FrmAgendamento.pcAgendamento.ActivePageIndex:=1;
//  FrmAgendamento.btnNovoClick(FrmAgendamento.btnNovo);
end;

procedure TFrmPrincipal.FechaFormulariosFilhos;
var
  Indice: Integer;
begin
  for Indice := 0 to Pred(MDIChildCount) do
  begin
    MDIChildren[Indice].Free;
  end;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
//var
//  StyleName: String;
//  StyleList: TStringList;
//  miStyleMenuItem: TMenuItem;
begin
//  StyleList        := TStringList.Create;
//  StyleList.Sorted := True;
//  try
//    for StyleName in TStyleManager.StyleNames do
//    begin
//      StyleList.Add(StyleName);
//    end;
//
//    StyleList.Sort;
//    for StyleName in StyleList do
//    begin
//      miStyleMenuItem         := mmPrincipal.CreateMenuItem;
//      miStyleMenuItem.Caption := StyleName;
//      miStyleMenuItem.Hint    := StyleName;
//      miStyleMenuItem.OnClick := miStyleMenuItemClick;
//
//      miTemas.Add(miStyleMenuItem);
//    end;
//
//  finally
//    FreeAndNil(StyleList);
//  end;

  pnConfiguracao.Visible:= False;

end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  sbPrincipal.Panels[0].Text := STR_BANCO_DADOS
                              + dmEntra21.SQLConnection.Params.Values[CNT_DATA_BASE];
  AtualizaUsuarioLogado;

  ImLogoQuery.Left := (Self.Width - ImLogoQuery.Width) div 2;
  ImLogoQuery.Top  := (Self.Height - ImLogoQuery.Height) div 2;

  pnConfiguracao.Left := (Self.Width - pnConfiguracao.Width) div 2;
  pnConfiguracao.Top  := (Self.Height - pnConfiguracao.Height) div 2;
end;

end.
