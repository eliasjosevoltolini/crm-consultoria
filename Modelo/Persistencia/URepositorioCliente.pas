unit URepositorioCliente;

interface

uses
    URepositorioDB
  , UCliente
  , SqlExpr
  ;

type
  TRepositorioCliente = class(TRepositorioDB<TCLIENTE>)
  protected
    //Atribui os dados do banco no objeto
    procedure AtribuiDBParaEntidade(const coCLIENTE: TCLIENTE); override;
    //Atribui os dados do objeto no banco
    procedure AtribuiEntidadeParaDB(const coCLIENTE: TCLIENTE;
                                    const coSQLQuery: TSQLQuery); override;
  public
    constructor Create;
  end;

implementation

{ TRepositorioUsuario }

uses
    UEntidade
  , UMensagens
  , SysUtils
  ;

{ TRepositorioCliente }

procedure TRepositorioCliente.AtribuiDBParaEntidade(const coCLIENTE: TCLIENTE);
begin
  inherited;
  //Pessoal:
  coCLIENTE.NOME             := FSQLSelect.FieldByName(FLD_CLIENTE_NOME).AsString;
  coCLIENTE.CPF              := FSQLSelect.FieldByName(FLD_CLIENTE_CPF).AsString;
  coCLIENTE.RG               := FSQLSelect.FieldByName(FLD_CLIENTE_RG).AsString;
  coCLIENTE.DATA_NASCIMENTO  := FSQLSelect.FieldByName(FLD_CLIENTE_DATA_NASCIMENTO).AsDateTime;

  //Contato:
  coCLIENTE.RESIDENCIAL      := FSQLSelect.FieldByName(FLD_CLIENTE_RESIDENCIAL).AsString;
  coCLIENTE.COMERCIAL        := FSQLSelect.FieldByName(FLD_CLIENTE_COMERCIAL).AsString;
  coCLIENTE.CELULAR          := FSQLSelect.FieldByName(FLD_CLIENTE_CELULAR).AsString;
  coCLIENTE.RECADO           := FSQLSelect.FieldByName(FLD_CLIENTE_RECADO).AsString;
  coCLIENTE.EMAIL            := FSQLSelect.FieldByName(FLD_CLIENTE_EMAIL).AsString;

  //Endereço:
  coCLIENTE.RUA              := FSQLSelect.FieldByName(FLD_CLIENTE_RUA).AsString;
  coCLIENTE.NUMERO           := FSQLSelect.FieldByName(FLD_CLIENTE_NUMERO).AsString;
  coCLIENTE.BAIRRO           := FSQLSelect.FieldByName(FLD_CLIENTE_BAIRRO).AsString;
  coCLIENTE.CIDADE           := FSQLSelect.FieldByName(FLD_CLIENTE_CIDADE).AsString;
  coCLIENTE.UF               := FSQLSelect.FieldByName(FLD_CLIENTE_UF).AsString;
  coCLIENTE.COMPLEMENTO      := FSQLSelect.FieldByName(FLD_CLIENTE_COMPLEMENTO).AsString;
  coCLIENTE.PONTO_REFERENCIA := FSQLSelect.FieldByName(FLD_CLIENTE_PONTO_REFERENCIA).AsString;
end;

procedure TRepositorioCliente.AtribuiEntidadeParaDB(const coCLIENTE: TCLIENTE;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  //Pessoal:
  coSQLQuery.ParamByName(FLD_CLIENTE_NOME).AsString             := coCLIENTE.NOME;
  coSQLQuery.ParamByName(FLD_CLIENTE_CPF).AsString              := coCLIENTE.CPF;
  coSQLQuery.ParamByName(FLD_CLIENTE_RG).AsString               := coCLIENTE.RG;
  coSQLQuery.ParamByName(FLD_CLIENTE_DATA_NASCIMENTO).AsDate    := coCLIENTE.DATA_NASCIMENTO;


  //Contato:
  coSQLQuery.ParamByName(FLD_CLIENTE_RESIDENCIAL).AsString      := coCLIENTE.RESIDENCIAL;
  coSQLQuery.ParamByName(FLD_CLIENTE_COMERCIAL).AsString        := coCLIENTE.COMERCIAL;
  coSQLQuery.ParamByName(FLD_CLIENTE_CELULAR).AsString          := coCLIENTE.CELULAR;
  coSQLQuery.ParamByName(FLD_CLIENTE_RECADO).AsString           := coCLIENTE.RECADO;
  coSQLQuery.ParamByName(FLD_CLIENTE_EMAIL).AsString            := coCLIENTE.EMAIL;

  //Endereço:
  coSQLQuery.ParamByName(FLD_CLIENTE_RUA).AsString              := coCLIENTE.RUA;
  coSQLQuery.ParamByName(FLD_CLIENTE_NUMERO).AsString           := coCLIENTE.NUMERO;
  coSQLQuery.ParamByName(FLD_CLIENTE_BAIRRO).AsString           := coCLIENTE.BAIRRO;
  coSQLQuery.ParamByName(FLD_CLIENTE_CIDADE).AsString           := coCLIENTE.CIDADE;
  coSQLQuery.ParamByName(FLD_CLIENTE_UF).AsString               := coCLIENTE.UF;
  coSQLQuery.ParamByName(FLD_CLIENTE_COMPLEMENTO).AsString      := coCLIENTE.COMPLEMENTO;
  coSQLQuery.ParamByName(FLD_CLIENTE_PONTO_REFERENCIA).AsString := coCLIENTE.PONTO_REFERENCIA;
end;

constructor TRepositorioCliente.Create;
begin
  Inherited Create(TCLIENTE, TBL_CLIENTE, FLD_ENTIDADE_ID, STR_CLIENTE);
end;

end.
