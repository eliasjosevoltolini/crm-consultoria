unit URegraCRUDUsuario;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioUsuario
  , UEntidade
  , UUsuario
  ;

type
  TRegraCRUDUsuario = class(TRegraCRUD)
  private
    function ValidateEmail(const emailAddress: string): Boolean;
  protected
    procedure ValidaInsercao(const coENTIDADE: TENTIDADE); override;
    procedure ValidaAtualizacao(const coENTIDADE: TENTIDADE); override;
    procedure PreparaAtualizacao(const coENTIDADE: TENTIDADE); override;
    procedure PreparaInsercao(const coENTIDADE: TENTIDADE); override;

  public
    CONFIRMACAO_SENHA: String;
    SENHA_ATUAL: String;

    procedure ValidaSenha(const csSenha, csConfimacaoSenha: String);
    procedure ValidaEmail(const csEmail: String);

    procedure ValidaNome(const csNome: String);
    procedure ValidaNomeDuplicidade(const csNome: String;
                                    const ciIdUSUARIO: Integer);

    constructor Create; override;
  end;

implementation

{ TRegraCRUDUsuario }

uses
    SysUtils
  , UUtilitarios
  , UMensagens
  , UConstantes
  , UUsuarioLogado
  , RegularExpressions
  ;

constructor TRegraCRUDUsuario.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioUsuario.Create);
end;

procedure TRegraCRUDUsuario.PreparaAtualizacao(const coENTIDADE: TENTIDADE);
begin
  inherited;
  with TUSUARIO(coENTIDADE) do
  begin
    SENHA := TUsuarioLogado.RetornaHash(SENHA);
  end;
end;

procedure TRegraCRUDUsuario.PreparaInsercao(const coENTIDADE: TENTIDADE);
begin
  inherited;
  with TUSUARIO(coENTIDADE) do
  begin
    SENHA := TUsuarioLogado.RetornaHash(SENHA);
  end;
end;

procedure TRegraCRUDUsuario.ValidaAtualizacao(const coENTIDADE: TENTIDADE);
begin
  inherited;
  with TUSUARIO(coENTIDADE) do
  begin
    if not TUsuarioLogado.ValidaLogin(NOME, SENHA_ATUAL) then
      raise EValidacaoNegocio.Create(STR_SENHA_ATUAL_NAO_CONFERE);

    ValidaSenha(SENHA, CONFIRMACAO_SENHA);
  end;

  ValidaNomeDuplicidade(TUSUARIO(coENTIDADE).NOME, TUSUARIO(coENTIDADE).ID);
  ValidaEmail(TUSUARIO(coENTIDADE).EMAIL);
end;

procedure TRegraCRUDUsuario.ValidaEmail(const csEmail: String);
begin
  if not ValidateEmail(csEmail) then
  begin
    raise EValidacaoNegocio.Create(STR_USUARIO_EMAIL_INVALIDO);
  end;
end;

procedure TRegraCRUDUsuario.ValidaInsercao(const coENTIDADE: TENTIDADE);
begin
  inherited;
  with TUSUARIO(coENTIDADE) do
  begin
    if NOME = EmptyStr Then
      raise EValidacaoNegocio.Create(STR_USUARIO_NOME_NAO_INFORMADO);

    ValidaSenha(SENHA, CONFIRMACAO_SENHA);
  end;

  ValidaNomeDuplicidade(TUSUARIO(coENTIDADE).NOME, TUSUARIO(coENTIDADE).ID);
  ValidaEmail(TUSUARIO(coENTIDADE).EMAIL);
end;

procedure TRegraCRUDUsuario.ValidaNome(const csNome: String);
begin
 if Trim(csNome) = EmptyStr then
  begin
    raise EValidacaoNegocio.Create(STR_USUARIO_NOME_NAO_INFORMADO);
  end;
end;

procedure TRegraCRUDUsuario.ValidaNomeDuplicidade(const csNome: String;
  const ciIdUSUARIO: Integer);
var
  loUSUARIO: TUSUARIO;
begin
  for loUSUARIO in TRepositorioUSUARIO(FRepositorioDB).RetornaTodos do
  begin
    if  (Trim(loUSUARIO.NOME) = Trim(csNome))
    and (loUSUARIO.ID        <>    ciIdUSUARIO    ) then
    begin
      raise EValidacaoNegocio.Create(STR_USUARIO_NOME_JA_EXISTE);
    end;
  end;
end;

procedure TRegraCRUDUsuario.ValidaSenha(const csSenha, csConfimacaoSenha: String);
begin
  if Length(Trim(csSenha)) < CNT_MINIMO_CARACTERES_SENHA then
    raise EValidacaoNegocio.CreateFmt(STR_SENHA_NAO_SEGURA,
                                     [CNT_MINIMO_CARACTERES_SENHA]);

  if csSenha <> csConfimacaoSenha then
    raise EValidacaoNegocio.Create(STR_SENHAS_NAO_CONFEREM);
end;

function TRegraCRUDUsuario.ValidateEmail(const emailAddress: string): Boolean;
var
  RegEx: TRegEx;
begin
  RegEx := TRegex.Create('^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]*[a-zA-Z0-9]+$');
  Result := RegEx.Match(emailAddress).Success;
end;

end.
