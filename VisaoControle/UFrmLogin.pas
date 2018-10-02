unit UFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, Buttons
  , UFrmPrincipal
  , UUtilitarios
  , UUsuario
  ;

type
  TFrmLogin = class(TForm)
    pnLogin: TPanel;
    lbUsuario: TLabel;
    lbSenha: TLabel;
    edSenha: TEdit;
    cbLembreUsuario: TCheckBox;
    edUsuario: TEdit;
    pnLogoMarca: TPanel;
    ImInsta: TImage;
    ImFace: TImage;
    ImTwiter: TImage;
    ImLogoQuery: TImage;
    lbFace: TLabel;
    lbTwiter: TLabel;
    lbInsta: TLabel;
    pnIniciarSessao: TPanel;
    btnIniciarSessao: TSpeedButton;
    pnSair: TPanel;
    btnSair: TSpeedButton;
    procedure btnIniciarSessaoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbFaceClick(Sender: TObject);
    procedure lbTwiterClick(Sender: TObject);
    procedure lbInstaClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses
    UMensagens
  , UDialogo
  , UUsuarioLogado
  , URLMON
  ;

procedure TFrmLogin.btnSairClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  CloseModal;
end;

procedure TFrmLogin.edSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnIniciarSessao.Click;
end;

procedure TFrmLogin.edUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edSenha.SetFocus;
end;

procedure TFrmLogin.lbFaceClick(Sender: TObject);
begin
  try
    HlinkNavigateString(nil,'https://www.facebook.com/crm.querry.5');
  except on E:Exception do
  begin
    ShowMessage('Erro ao acessar o browse: ' + E.Message);
  end;
  end;
end;

procedure TFrmLogin.lbInstaClick(Sender: TObject);
begin
  try
    HlinkNavigateString(nil,'https://www.instagram.com/crmquerry/?hl=pt-br');
  except on E:Exception do
  begin
    ShowMessage('Erro ao acessar o browse: ' + E.Message);
  end;
  end;
end;

procedure TFrmLogin.lbTwiterClick(Sender: TObject);
begin
  try
    HlinkNavigateString(nil,'https://twitter.com/CrmQuerry');
  except on E:Exception do
  begin
    ShowMessage('Erro ao acessar o browse: ' + E.Message);
  end;
  end;
end;

procedure TFrmLogin.btnIniciarSessaoClick(Sender: TObject);
begin
  try
    TUsuarioLogado.Unico.RealizaLogin(edUsuario.Text, edSenha.Text);

    ModalResult := mrYes;
    CloseModal;
  except
    on E: Exception do
    begin
      TDialogo.Excecao(E);
      edUsuario.SetFocus;
    end;
  end;
end;

end.
