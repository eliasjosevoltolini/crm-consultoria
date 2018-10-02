unit URepositorioConsultor;

interface

uses
    URepositorioDB
  , UConsultor
  , SqlExpr
  ;

type
  TRepositorioConsultor = class(TRepositorioDB<TCONSULTOR>)
  protected
    //Atribui os dados do banco no objeto
    procedure AtribuiDBParaEntidade(const coCONSULTOR: TCONSULTOR); override;
    //Atribui os dados do objeto no banco
    procedure AtribuiEntidadeParaDB(const coCONSULTOR: TCONSULTOR;
                                    const coSQLQuery: TSQLQuery); override;
  public
    constructor Create;
  end;

implementation

{ TRepositorioCOnsultor }

uses
    UEntidade
  , UMensagens
  ;

procedure TRepositorioConsultor.AtribuiDBParaEntidade(
  const coCONSULTOR: TCONSULTOR);
begin
  inherited;
  coCONSULTOR.NOME     := FSQLSelect.FieldByName(FLD_CONSULTOR_NOME).AsString;
  coCONSULTOR.EMAIL    := FSQLSelect.FieldByName(FLD_CONSULTOR_EMAIL).AsString;
  coCONSULTOR.SEGMENTO := FSQLSelect.FieldByName(FLD_CONSULTOR_SEGMENTO).AsString;
end;

procedure TRepositorioConsultor.AtribuiEntidadeParaDB(
  const coCONSULTOR: TCONSULTOR; const coSQLQuery: TSQLQuery);
begin
  inherited;
  coSQLQuery.ParamByName(FLD_CONSULTOR_NOME).AsString     := coCONSULTOR.NOME;
  coSQLQuery.ParamByName(FLD_CONSULTOR_EMAIL).AsString    := coCONSULTOR.EMAIL;
  coSQLQuery.ParamByName(FLD_CONSULTOR_SEGMENTO).AsString := coCONSULTOR.SEGMENTO;
end;

constructor TRepositorioConsultor.Create;
begin
  Inherited Create(TCONSULTOR, TBL_CONSULTOR, FLD_ENTIDADE_ID, STR_CONSULTOR);
end;

end.
