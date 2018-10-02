unit URegraCRUDCliente;

interface

uses
    URegraCRUD
  , UEntidade
  , UCliente
  , URepositorioDB
  , URepositorioCliente
  ;

type
  TRegraCRUDCliente = class(TRegraCRUD)
  private
    function ValidateEmail(const emailAddress: string): Boolean;
    function isCPF(CPF: string): boolean;
  protected
    procedure ValidaAtualizacao(const coENTIDADE: TENTIDADE); override;
    procedure ValidaInsercao(const coENTIDADE: TENTIDADE); override;

  public
    constructor Create; override;
    destructor Destroy; override;

    function RetornaCliente(const ciIdCliente: Integer): TCLIENTE;
    function RetornaClientes: TArray<TCLIENTE>;

    procedure ValidaEmail(const csEmail: String);
    procedure ValidaCPF(const CPF: String);
    procedure ValidaDataNascimento(Data: TDate);

    procedure ValidaNome(const csNome: String);
    procedure ValidaNomeDuplicidade(const csNome: String;
                                    const ciIdCLIENTE: Integer);

  end;

implementation

{ TRegraCRUDCliente }

uses
    Generics.Collections
  , SysUtils
  , UUtilitarios
  , UMensagens
  , UConstantes
  , RegularExpressions
  ;

constructor TRegraCRUDCliente.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioCliente.Create);
end;

destructor TRegraCRUDCliente.Destroy;
begin
  FreeAndNil(FRepositorioDB);
  inherited;
end;

function TRegraCRUDCliente.isCPF(CPF: string): boolean;
var  dig10, dig11: string;
    s, i, r, peso: integer;
begin
// length - retorna o tamanho da string (CPF é um número formado por 11 dígitos)
  if ((CPF = '00000000000') or (CPF = '11111111111') or
      (CPF = '22222222222') or (CPF = '33333333333') or
      (CPF = '44444444444') or (CPF = '55555555555') or
      (CPF = '66666666666') or (CPF = '77777777777') or
      (CPF = '88888888888') or (CPF = '99999999999') or
      (length(CPF) <> 11))
     then begin
              isCPF := false;
              exit;
            end;

// try - protege o código para eventuais erros de conversão de tipo na função StrToInt
  try
{ *-- Cálculo do 1o. Digito Verificador --* }
    s := 0;
    peso := 10;
    for i := 1 to 9 do
    begin
// StrToInt converte o i-ésimo caractere do CPF em um número
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig10 := '0'
    else str(r:1, dig10); // converte um número no respectivo caractere numérico

{ *-- Cálculo do 2o. Digito Verificador --* }
    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig11 := '0'
    else str(r:1, dig11);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig10 = CPF[10]) and (dig11 = CPF[11]))
       then isCPF := true
    else isCPF := false;
  except
    isCPF := false
  end;
end;

function TRegraCRUDCliente.RetornaCliente(const ciIdCliente: Integer): TCLIENTE;
var
  loCLIENTE: TCLIENTE;
begin
  Result:= nil;

  for loCLIENTE in TRepositorioCLIENTE(FRepositorioDB).RetornaTodos do
  begin
    if loCLIENTE.ID = ciIdCliente then
    begin
      Result:= loCLIENTE;
    end;
  end;
end;

function TRegraCRUDCliente.RetornaClientes: TArray<TCLIENTE>;
begin
  Result:= TRepositorioCliente(FRepositorioDB).RetornaTodos.ToArray;
end;

procedure TRegraCRUDCliente.ValidaAtualizacao(const coENTIDADE: TENTIDADE);
begin
  inherited;
  ValidaNome(TCLIENTE(coENTIDADE).NOME);
  ValidaNomeDuplicidade(TCLIENTE(coENTIDADE).NOME, TCLIENTE(coENTIDADE).ID);
  ValidaEmail(TCLIENTE(coENTIDADE).EMAIL);
  ValidaCPF(TCLIENTE(coENTIDADE).CPF);
  ValidaDataNascimento(TCLIENTE(coENTIDADE).DATA_NASCIMENTO);
end;

procedure TRegraCRUDCliente.ValidaCPF(const CPF: String);
begin
  if not isCPF(CPF) then
  begin
    raise EValidacaoNegocio.Create(STR_CLIENTE_CPF_INVALIDO);
  end;
end;

procedure TRegraCRUDCliente.ValidaDataNascimento(Data: TDate);
begin
  if (Data >= Now) then
  begin
     raise EValidacaoNegocio.Create(STR_CLIENTE_DATA_NASCIMENTO_INVALIDA);
  end;
end;

procedure TRegraCRUDCliente.ValidaEmail(const csEmail: String);
begin
  if not ValidateEmail(csEmail) then
  begin
    raise EValidacaoNegocio.Create(STR_CLIENTE_EMAIL_INVALIDO);
  end;
end;

procedure TRegraCRUDCliente.ValidaInsercao(const coENTIDADE: TENTIDADE);
begin
  inherited;
  ValidaNome(TCLIENTE(coENTIDADE).NOME);
  ValidaNomeDuplicidade(TCLIENTE(coENTIDADE).NOME, TCLIENTE(coENTIDADE).ID);
  ValidaEmail(TCLIENTE(coENTIDADE).EMAIL);
  ValidaCPF(TCLIENTE(coENTIDADE).CPF);
  ValidaDataNascimento(TCLIENTE(coENTIDADE).DATA_NASCIMENTO);
end;

procedure TRegraCRUDCliente.ValidaNome(const csNome: String);
begin
  if Trim(csNome) = EmptyStr then
  begin
    raise EValidacaoNegocio.Create(STR_CLIENTE_NOME_NAO_INFORMADO);
  end;
end;

procedure TRegraCRUDCliente.ValidaNomeDuplicidade(const csNome: String;
  const ciIdCLIENTE: Integer);
var
  loCLIENTE: TCLIENTE;
begin
  for loCLIENTE in TRepositorioCLIENTE(FRepositorioDB).RetornaTodos do
  begin
    if  (Trim(loCLIENTE.NOME) = Trim(csNome))
    and (loCLIENTE.ID        <>    ciIdCLIENTE) then
    begin
      raise EValidacaoNegocio.Create(STR_CLIENTE_NOME_JA_EXISTE);
    end;
  end;
end;

function TRegraCRUDCliente.ValidateEmail(const emailAddress: string): Boolean;
var
  RegEx: TRegEx;
begin
  RegEx := TRegex.Create('^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]*[a-zA-Z0-9]+$');
  Result := RegEx.Match(emailAddress).Success;

end;

end.
