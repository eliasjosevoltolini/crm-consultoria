unit URepositorioAgendamento;

interface

uses
    URepositorioDB
  , UAgendamento
  , SqlExpr
  ;

type
  TRepositorioAgendamento = class(TRepositorioDB<TAGENDAMENTO>)
  protected
    //Atribui os dados do banco no objeto
    procedure AtribuiDBParaEntidade(const coAGENDAMENTO: TAGENDAMENTO); override;
    //Atribui os dados do objeto no banco
    procedure AtribuiEntidadeParaDB(const coAGENDAMENTO: TAGENDAMENTO;
                                    const coSQLQuery: TSQLQuery); override;
  public
    constructor Create;
  end;

implementation

{ TRepositorioUsuario }

uses
    UEntidade
  , UMensagens
  ;

{ TRepositorioAgendamento }

procedure TRepositorioAgendamento.AtribuiDBParaEntidade(
  const coAGENDAMENTO: TAGENDAMENTO);
begin
  inherited;
  //Consultor:
  coAGENDAMENTO.ID_CONSULTOR    := FSQLSelect.FieldByName(FLD_AGENDAMENTO_ID_CONSULTOR).AsInteger;
  coAGENDAMENTO.NOME_CONSULTOR  := FSQLSelect.FieldByName(FLD_AGENDAMENTO_NOME_CONSULTOR).AsString;

  //Cliente:
  coAGENDAMENTO.ID_CLIENTE      := FSQLSelect.FieldByName(FLD_AGENDAMENTO_ID_CLIENTE).AsInteger;
  coAGENDAMENTO.NOME_CLIENTE    := FSQLSelect.FieldByName(FLD_AGENDAMENTO_NOME_CLIENTE).AsString;

  //Agendamento:
  coAGENDAMENTO.DATA_INICIO     := FSQLSelect.FieldByName(FLD_AGENDAMENTO_DATA_INICIO).AsDateTime;
  coAGENDAMENTO.DATA_TERMINO    := FSQLSelect.FieldByName(FLD_AGENDAMENTO_DATA_TERMINO).AsDateTime;

  coAGENDAMENTO.HORARIO_INICIO  := FSQLSelect.FieldByName(FLD_AGENDAMENTO_HORARIO_INICIO).AsDateTime;
  coAGENDAMENTO.HORARIO_TERMINO := FSQLSelect.FieldByName(FLD_AGENDAMENTO_HORARIO_TERMINO).AsDateTime;
  coAGENDAMENTO.DURACAO         := FSQLSelect.FieldByName(FLD_AGENDAMENTO_DURACAO).AsDateTime;

  coAGENDAMENTO.OBSERVACAO      := FSQLSelect.FieldByName(FLD_AGENDAMENTO_OBSERVACAO).AsString;
end;

procedure TRepositorioAgendamento.AtribuiEntidadeParaDB(
  const coAGENDAMENTO: TAGENDAMENTO; const coSQLQuery: TSQLQuery);
begin
  inherited;
  //Consultor:
  coSQLQuery.ParamByName(FLD_AGENDAMENTO_ID_CONSULTOR).AsInteger       := coAGENDAMENTO.ID_CONSULTOR;
  coSQLQuery.ParamByName(FLD_AGENDAMENTO_NOME_CONSULTOR).AsString      := coAGENDAMENTO.NOME_CONSULTOR;

  //Cliente:
  coSQLQuery.ParamByName(FLD_AGENDAMENTO_ID_CLIENTE).AsInteger         := coAGENDAMENTO.ID_CLIENTE;
  coSQLQuery.ParamByName(FLD_AGENDAMENTO_NOME_CLIENTE).AsString        := coAGENDAMENTO.NOME_CLIENTE;

  //Agendamento:
  coSQLQuery.ParamByName(FLD_AGENDAMENTO_DATA_INICIO).AsDate           := coAGENDAMENTO.DATA_INICIO;
  coSQLQuery.ParamByName(FLD_AGENDAMENTO_DATA_TERMINO).AsDate          := coAGENDAMENTO.DATA_TERMINO;

  coSQLQuery.ParamByName(FLD_AGENDAMENTO_HORARIO_INICIO).AsTime        := coAGENDAMENTO.HORARIO_INICIO;
  coSQLQuery.ParamByName(FLD_AGENDAMENTO_HORARIO_TERMINO).AsTime       := coAGENDAMENTO.HORARIO_TERMINO;
  coSQLQuery.ParamByName(FLD_AGENDAMENTO_DURACAO).AsTime               := coAGENDAMENTO.DURACAO;

  coSQLQuery.ParamByName(FLD_AGENDAMENTO_OBSERVACAO).AsString          := coAGENDAMENTO.OBSERVACAO;
end;

constructor TRepositorioAgendamento.Create;
begin
  Inherited Create(TAGENDAMENTO, TBL_AGENDAMENTO, FLD_ENTIDADE_ID, STR_AGENDAMENTO);
end;

end.
