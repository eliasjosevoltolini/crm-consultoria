unit URegraCRUDAgendamento;

interface

uses
  URegraCRUD, UEntidade, UAgendamento, URepositorioDB, URepositorioAgendamento,
  Dateutils;

type
  TRegraCRUDAgendamento = class(TRegraCRUD)
  protected
    procedure ValidaAtualizacao(const coENTIDADE: TENTIDADE); override;
    procedure ValidaInsercao(const coENTIDADE: TENTIDADE); override;

  public
    constructor Create; override;

    function RetornaAgendamentos: TArray<TAGENDAMENTO>;

    function RetornaAgendamentosConsultor(const csNome: String;
      const ciIdCONSULTOR: Integer): TArray<TAGENDAMENTO>; overload;

    function RetornaAgendamentosConsultor(const csNome: String;
      const ciIdCONSULTOR: Integer; const DataInicial: TDate;
      const QtdDias: Integer): TArray<TAGENDAMENTO>; overload;

    function RetornaAgendamentosConsultorComCliente(const csConsultor: String;
      const ciIdCONSULTOR: Integer; const csCliente: String;
      const ciIdCLIENTE: Integer; const DataInicial: TDate;
      const QtdDias: Integer): TArray<TAGENDAMENTO>; overload;

    procedure ValidaAgendamento(const ciIdCONSULTOR: Integer;
                                const DataInicial: TDate;
                                const HorarioAtendimento: TTime;
                                const DuracaoAtedimento: TTime);

  end;

implementation

{ TRegraCRUDAgendamento }

  uses
    Generics.Collections
  , SysUtils
  , UUtilitarios
  , UMensagens
  , UConstantes
  , RegularExpressions
  ;


constructor TRegraCRUDAgendamento.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioAgendamento.Create);
end;

function TRegraCRUDAgendamento.RetornaAgendamentos: TArray<TAGENDAMENTO>;
begin
  Result := TRepositorioAgendamento(FRepositorioDB).RetornaTodos.ToArray;
end;

function TRegraCRUDAgendamento.RetornaAgendamentosConsultor
  (const csNome: String; const ciIdCONSULTOR: Integer; const DataInicial: TDate;
  const QtdDias: Integer): TArray<TAGENDAMENTO>;
var
  loAGENDAMENTO: TAGENDAMENTO;
  AgendaConsultor: TList<TAGENDAMENTO>;
begin
  try
    Result := nil;
    AgendaConsultor := TList<TAGENDAMENTO>.Create;

    for loAGENDAMENTO in TRepositorioAgendamento(FRepositorioDB).RetornaTodos do
    begin
      if (loAGENDAMENTO.NOME_CONSULTOR = csNome) AND
        (loAGENDAMENTO.ID_CONSULTOR = ciIdCONSULTOR) then
      begin
        // Fazer a verificação dos dias:
        if (loAGENDAMENTO.DATA_INICIO >= DataInicial) AND
          (loAGENDAMENTO.DATA_INICIO <= INCDAY(DataInicial, QtdDias)) then
        begin
          AgendaConsultor.Add(loAGENDAMENTO);
        end;
      end;
    end;

    Result := AgendaConsultor.ToArray;

  finally
    FreeAndNil(AgendaConsultor);
  end;
end;

function TRegraCRUDAgendamento.RetornaAgendamentosConsultorComCliente
  (const csConsultor: String; const ciIdCONSULTOR: Integer;
  const csCliente: String; const ciIdCLIENTE: Integer; const DataInicial: TDate;
  const QtdDias: Integer): TArray<TAGENDAMENTO>;
var
  loAGENDAMENTO: TAGENDAMENTO;
  AgendaConsultor: TList<TAGENDAMENTO>;
begin
  try
    Result := nil;
    AgendaConsultor := TList<TAGENDAMENTO>.Create;

    for loAGENDAMENTO in TRepositorioAgendamento(FRepositorioDB).RetornaTodos do
    begin
      if (loAGENDAMENTO.NOME_CONSULTOR = csConsultor) AND
        (loAGENDAMENTO.ID_CONSULTOR = ciIdCONSULTOR) then
      begin
        if (loAGENDAMENTO.NOME_CLIENTE = csCliente) AND
          (loAGENDAMENTO.ID_CLIENTE = ciIdCLIENTE) then
        begin
          // Fazer a verificação dos dias:
          if (loAGENDAMENTO.DATA_INICIO >= DataInicial) AND
            (loAGENDAMENTO.DATA_INICIO <= INCDAY(DataInicial, QtdDias)) then
          begin
            AgendaConsultor.Add(loAGENDAMENTO);
          end;
        end;
      end;
    end;

    Result := AgendaConsultor.ToArray;

  finally
    FreeAndNil(AgendaConsultor);
  end;

end;

function TRegraCRUDAgendamento.RetornaAgendamentosConsultor
  (const csNome: String; const ciIdCONSULTOR: Integer): TArray<TAGENDAMENTO>;
var
  loAGENDAMENTO: TAGENDAMENTO;
  AgendaConsultor: TList<TAGENDAMENTO>;
begin
  try
    Result := nil;
    AgendaConsultor := TList<TAGENDAMENTO>.Create;

    for loAGENDAMENTO in TRepositorioAgendamento(FRepositorioDB).RetornaTodos do
    begin
      if (loAGENDAMENTO.NOME_CONSULTOR = csNome) AND
        (loAGENDAMENTO.ID_CONSULTOR = ciIdCONSULTOR) then
      begin
        AgendaConsultor.Add(loAGENDAMENTO);
      end;
    end;

    Result := AgendaConsultor.ToArray;

  finally
    FreeAndNil(AgendaConsultor);
  end;
end;

procedure TRegraCRUDAgendamento.ValidaAgendamento(const ciIdCONSULTOR: Integer;
                                                  const DataInicial: TDate;
                                                  const HorarioAtendimento, DuracaoAtedimento: TTime);
var
  loAGENDAMENTO: TAGENDAMENTO;
  loDataHoraInicio: TDateTime;
  loDataHoraTermino: TDateTime;
begin
  loDataHoraInicio  := DataInicial;
  loDataHoraTermino := DataInicial;

  ReplaceTime(loDataHoraInicio, HorarioAtendimento);
  ReplaceTime(loDataHoraTermino, (HorarioAtendimento + DuracaoAtedimento));

  for loAGENDAMENTO in TRepositorioAgendamento(FRepositorioDB).RetornaTodos do
  begin
    if ciIdCONSULTOR = loAGENDAMENTO.ID_CONSULTOR then
    begin
      if DateTimeInRange(loDataHoraInicio, loAGENDAMENTO.DATA_HORA_INICIO, loAGENDAMENTO.DATA_HORA_TERMINO)
      or DateTimeInRange(loDataHoraTermino, loAGENDAMENTO.DATA_HORA_INICIO, loAGENDAMENTO.DATA_HORA_TERMINO) then
      begin
        raise EValidacaoNegocio.Create(STR_AGENDAMENTO_JA_POSSUI_HORARIO_MARCADO);
      end;
    end;
  end;

end;

procedure TRegraCRUDAgendamento.ValidaAtualizacao(const coENTIDADE: TENTIDADE);
begin
  inherited;
  ValidaAgendamento(TAGENDAMENTO(coENTIDADE).ID_CONSULTOR
                  , TAGENDAMENTO(coENTIDADE).DATA_INICIO
                  , TAGENDAMENTO(coENTIDADE).HORARIO_INICIO
                  , TAGENDAMENTO(coENTIDADE).DURACAO);
end;

procedure TRegraCRUDAgendamento.ValidaInsercao(const coENTIDADE: TENTIDADE);
begin
  inherited;
  ValidaAgendamento(TAGENDAMENTO(coENTIDADE).ID_CONSULTOR
                  , TAGENDAMENTO(coENTIDADE).DATA_INICIO
                  , TAGENDAMENTO(coENTIDADE).HORARIO_INICIO
                  , TAGENDAMENTO(coENTIDADE).DURACAO);
end;

end.
