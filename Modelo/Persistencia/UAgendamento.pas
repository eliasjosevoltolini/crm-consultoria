unit UAgendamento;

interface

uses
    UEntidade
  ;

type
  TAgendamento = class(TENTIDADE)
  private
    //Consultor:
    FId_Consultor    : Integer;
    FNome_Consultor  : String;

    //Cliente:
    FId_Cliente      : Integer;
    FNome_Cliente    : String;

    //Agendamento:
    FData_Inicio     : TDate;
    FData_Termino    : TDate;

    FHorario_Inicio  : TTime;
    FHorario_Termino : TTime;
    FDuracao         : TTime;

    FObeservacao     : String;

    function RetornaDataHoraInicio: TDateTime;
    function RetornaDataHoraTermino: TDateTime;

  public
    //Consultor:
    property ID_CONSULTOR    : Integer read FId_Consultor    write FId_Consultor;
    property NOME_CONSULTOR  : String  read FNome_Consultor  write FNome_Consultor;

    //Cliente:
    property ID_CLIENTE      : Integer read FId_Cliente      write FId_Cliente;
    property NOME_CLIENTE    : String  read FNome_Cliente    write FNome_Cliente;

    //Agendamento:
    property DATA_INICIO     : TDate   read FData_Inicio     write FData_Inicio;
    property DATA_TERMINO    : TDate   read FData_Termino    write FData_Termino;

    property HORARIO_INICIO  : TTime   read FHorario_Inicio  write FHorario_Inicio;
    property HORARIO_TERMINO : TTime   read FHorario_Termino write FHorario_Termino;
    property DURACAO         : TTime   read FDuracao         write FDuracao;

    property OBSERVACAO      : String  read FObeservacao     write FObeservacao;

    property DATA_HORA_INICIO: TDateTime read RetornaDataHoraInicio;
    property DATA_HORA_TERMINO: TDateTime read RetornaDataHoraTermino;
  end;

  //Acesso banco de dados:
const
  TBL_AGENDAMENTO                    = 'AGENDAMENTO';

  //Consultor:
  FLD_AGENDAMENTO_ID_CONSULTOR       = 'ID_CONSULTOR';
  FLD_AGENDAMENTO_NOME_CONSULTOR     = 'NOME_CONSULTOR';

  //Cliente:
  FLD_AGENDAMENTO_ID_CLIENTE         = 'ID_CLIENTE';
  FLD_AGENDAMENTO_NOME_CLIENTE       = 'NOME_CLIENTE';

  FLD_AGENDAMENTO_DATA_INICIO        = 'DATA_INICIO';
  FLD_AGENDAMENTO_DATA_TERMINO       = 'DATA_TERMINO';

  FLD_AGENDAMENTO_HORARIO_INICIO     = 'HORARIO_INICIO';
  FLD_AGENDAMENTO_HORARIO_TERMINO    = 'HORARIO_TERMINO';
  FLD_AGENDAMENTO_DURACAO            = 'DURACAO';

  FLD_AGENDAMENTO_OBSERVACAO         = 'OBSERVACAO';

  //View:
  VW_AGENDAMENTO                     = 'VW_AGENDAMENTO';
  VW_AGENDAMENTO_ID                  = 'Código Agendamento';
  VW_AGENDAMENTO_ID_CONSULTOR        = 'Código Consultor';
  VW_AGENDAMENTO_NOME_CONSULTOR      = 'Consultor';
  VW_AGENDAMENTO_ID_CLIENTE          = 'Código Cliente';
  VW_AGENDAMENTO_NOME_CLIENTE        = 'Cliente';
  VW_AGENDAMENTO_DATA_INICIO         = 'Data Inícial';
  VW_AGENDAMENTO_DATA_TERMINO        = 'Data Termino';
  VW_AGENDAMENTO_HORARIO_INICIO      = 'Horario Inícial';
  VW_AGENDAMENTO_HORARIO_TERMINO     = 'Horario Termino';
  VW_AGENDAMENTO_DURACAO             = 'Duração';
  VW_AGENDAMENTO_OBSERVACAO          = 'Observação';

implementation

uses
    SysUtils
  ;

{ TAgendamento }

function TAgendamento.RetornaDataHoraInicio: TDateTime;
var
  loDataHoraInicio: TDateTime;
begin
  loDataHoraInicio := DATA_INICIO;
  ReplaceTime(loDataHoraInicio, HORARIO_INICIO + StrToTime('00:01:00'));
  Result := loDataHoraInicio;
end;

function TAgendamento.RetornaDataHoraTermino: TDateTime;
var
  loDataHoraTermino: TDateTime;
begin
  loDataHoraTermino := DATA_TERMINO;
  ReplaceTime(loDataHoraTermino, HORARIO_TERMINO - StrToTime('00:01:00'));
  Result := loDataHoraTermino;
end;

end.
