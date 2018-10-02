unit UFrmUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, UFrmCRUD, Menus, Buttons,
  StdCtrls, PwCtrls, ExtCtrls
  , UUtilitarios
  , UUsuario
  , URegraCRUDUsuario, pngimage
  ;

type
  TFrmUsuario = class(TFrmCRUD)
    gbInformacoes: TGroupBox;
    lbNome: TLabel;
    lbEmail: TLabel;
    lbSenha: TLabel;
    lbConfirmarSenha: TLabel;
    edNome: TEdit;
    edEmail: TEdit;
    edSenha: TEdit;
    edConfirmarSenha: TEdit;
    procedure edConfirmarSenhaExit(Sender: TObject);
  private
    FUSUARIO          : TUSUARIO;
    FRegraCRUDUsuario : TRegraCRUDUsuario;

  protected
    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  FrmUsuario: TFrmUsuario;

implementation

{$R *.dfm}

{ TFrmUsuario }

uses
    UOpcaoPesquisa
  , UEntidade
  , UMensagens
  , UDialogo
  ;

procedure TFrmUsuario.edConfirmarSenhaExit(Sender: TObject);
begin
  inherited;
  try
    FRegraCRUDUsuario.ValidaSenha(edSenha.Text, edConfirmarSenha.Text);

  except
    on E: Exception do
    begin
      TDialogo.Excecao(E);

    end;
  end;
end;

procedure TFrmUsuario.Finaliza;
begin
  inherited;
  FreeAndNil(FUSUARIO);
  FreeAndNil(FRegraCRUDUsuario);
end;

procedure TFrmUsuario.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  gbInformacoes.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmUsuario.Inicializa;
begin
  inherited;
  DefineEntidade(@FUSUARIO, TUSUARIO);
  DefineRegraCRUD(@FRegraCRUDUsuario, TRegraCRUDUsuario);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(VW_USUARIO)
    .DefineNomeCampoRetorno(VW_USUARIO_ID)
    .AdicionaFiltro(VW_USUARIO_NOME)
    .DefineNomePesquisa(STR_USUARIO));

  FUSUARIO          := TUSUARIO.Create;
  FRegraCRUDUsuario := TRegraCRUDUsuario.Create;
end;

procedure TFrmUsuario.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNome.SetFocus;
end;

procedure TFrmUsuario.PreencheEntidade;
begin
  inherited;
  FUSUARIO.NOME          := edNome.Text;
  FUSUARIO.EMAIL         := edEmail.Text;
  FUSUARIO.SENHA         := edSenha.Text;

  FRegraCRUDUsuario.SENHA_ATUAL       := edSenha.Text;
  FRegraCRUDUsuario.CONFIRMACAO_SENHA := edConfirmarSenha.Text;
end;

procedure TFrmUsuario.PreencheFormulario;
begin
  inherited;
   edNome.Text           := FUSUARIO.NOME;
   edEmail.Text          := FUSUARIO.EMAIL;
   edSenha.Text          := FUSUARIO.SENHA;
   edConfirmarSenha.Text := FUSUARIO.SENHA;
end;

end.
