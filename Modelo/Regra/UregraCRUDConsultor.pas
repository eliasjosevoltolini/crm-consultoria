unit UregraCRUDConsultor;

interface

uses
    URegraCRUD
  , UEntidade
  , UConsultor
  , URepositorioDB
  , URepositorioConsultor
  ;

type
  TRegraCRUDConsultor = class(TRegraCRUD)
  private
    function ValidateEmail(const emailAddress: string): Boolean;
  protected
    procedure ValidaAtualizacao(const coENTIDADE: TENTIDADE); override;
    procedure ValidaInsercao(const coENTIDADE: TENTIDADE); override;

  public
    constructor Create; override;

    function RetornaConsultor(const ciIdConsultor: Integer): TCONSULTOR;
    function RetornaConsultores: TArray<TCONSULTOR>;

    procedure ValidaEmail(const csEmail: String);

    procedure ValidaNome(const csNome: String);
    procedure ValidaNomeDuplicidade(const csNome: String;
                                    const ciIdCONSULTOR: Integer);

  end;

implementation

{ TRegraCRUDConsultor }

uses
    Generics.Collections
  , SysUtils
  , UUtilitarios
  , UMensagens
  , UConstantes
  , RegularExpressions
  ;

constructor TRegraCRUDConsultor.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioConsultor.Create);
end;

function TRegraCRUDConsultor.RetornaConsultor(
  const ciIdConsultor: Integer): TCONSULTOR;
var
  loCONSULTOR: TCONSULTOR;
begin
  Result:= nil;

  for loCONSULTOR in TRepositorioCONSULTOR(FRepositorioDB).RetornaTodos do
  begin
    if loCONSULTOR.ID = ciIdConsultor then
    begin
      Result:= loCONSULTOR;
    end;
  end;
end;

function TRegraCRUDConsultor.RetornaConsultores: TArray<TCONSULTOR>;
begin
  Result:= TRepositorioConsultor(FRepositorioDB).RetornaTodos.ToArray;
end;

procedure TRegraCRUDConsultor.ValidaAtualizacao(const coENTIDADE: TENTIDADE);
begin
  inherited;
  ValidaNome(TCONSULTOR(coENTIDADE).NOME);
  ValidaNomeDuplicidade(TCONSULTOR(coENTIDADE).NOME, TCONSULTOR(coENTIDADE).ID);
  ValidaEmail(TCONSULTOR(coENTIDADE).EMAIL);
end;

procedure TRegraCRUDConsultor.ValidaEmail(const csEmail: String);
begin
  if not ValidateEmail(csEmail) then
  begin
    raise EValidacaoNegocio.Create(STR_CONSULTOR_EMAIL_INVALIDO);
  end;
end;

procedure TRegraCRUDConsultor.ValidaInsercao(const coENTIDADE: TENTIDADE);
begin
  inherited;
  ValidaNome(TCONSULTOR(coENTIDADE).NOME);
  ValidaNomeDuplicidade(TCONSULTOR(coENTIDADE).NOME, TCONSULTOR(coENTIDADE).ID);
  ValidaEmail(TCONSULTOR(coENTIDADE).EMAIL);
end;

procedure TRegraCRUDConsultor.ValidaNome(const csNome: String);
begin
 if Trim(csNome) = EmptyStr then
  begin
    raise EValidacaoNegocio.Create(STR_CONSULTOR_NOME_NAO_INFORMADO);
  end;
end;

procedure TRegraCRUDConsultor.ValidaNomeDuplicidade(const csNome: String;
  const ciIdCONSULTOR: Integer);
var
  loCONSULTOR: TCONSULTOR;
begin
  for loCONSULTOR in TRepositorioCONSULTOR(FRepositorioDB).RetornaTodos do
  begin
    if  (Trim(loCONSULTOR.NOME) = Trim(csNome))
    and (loCONSULTOR.ID        <>    ciIdCONSULTOR) then
    begin
      raise EValidacaoNegocio.Create(STR_CONSULTOR_NOME_JA_EXISTE);
    end;
  end;
end;

function TRegraCRUDConsultor.ValidateEmail(const emailAddress: string): Boolean;
var
  RegEx: TRegEx;
begin
  RegEx := TRegex.Create('^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]*[a-zA-Z0-9]+$');
  Result := RegEx.Match(emailAddress).Success;

end;

end.
