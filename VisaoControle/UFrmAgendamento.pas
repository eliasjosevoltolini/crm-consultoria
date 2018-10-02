unit UFrmAgendamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, StdCtrls, PwCtrls, ExtCtrls, Mask, ComCtrls
  , UUtilitarios
  , Generics.Collections
  , UAgendamento
  , URegraCRUDAgendamento
  , UregraCRUDConsultor
  , URegraCRUDCliente, Grids, DBGrids
  , UConsultor
  , UCliente, pngimage
  ;

type
 TTipoLinnhaHorario    = (
    tlOITO_ZERO = 1       ,
    tlOITO_QUINZE         ,
    tlOITO_TRINTA         ,
    tlOITO_QRT_CINCO      ,
    tlNOVE_ZERO           ,
    tlNOVE_QUINZE         ,
    tlNOVE_TRINTA         ,
    tlNOVE_QRT_CINCO      ,
    tlDEZ_ZERO            ,
    tlDEZ_QUINZE          ,
    tlDEZ_TRINTA          ,
    tlDEZ_QRT_CINCO       ,
    tlONZE_ZERO           ,
    tlONZE_QUINZE         ,
    tlONZE_TRINTA         ,
    tlONZE_QRT_CINCO      ,
    tlTREZE_ZERO          ,
    tlTREZE_QUINZE        ,
    tlTREZE_TRINTA        ,
    tlTREZE_QRT_CINCO     ,
    tlQUATORZE_ZERO       ,
    tlQUATORZE_QUINZE     ,
    tlQUATORZE_TRINTA     ,
    tlQUATORZE_QRT_CINCO  ,
    tlQUINZE_ZERO         ,
    tlQUINZE_QUINZE       ,
    tlQUINZE_TRINTA       ,
    tlQUINZE_QRT_CINCO    ,
    tlDEZESSEIS_ZERO      ,
    tlDEZESSEIS_QUINZE    ,
    tlDEZESSEIS_TRINTA    ,
    tlDEZESSEIS_QRT_CINCO ,
    tlDEZESSETE_ZERO      ,
    tlDEZESSETE_QUINZE    ,
    tlDEZESSETE_TRINTA    ,
    tlDEZESSETE_QRT_CINCO ,
    tlDEZOITO_ZERO        ,
    tlDEZOITO_QUINZE      ,
    tlDEZOITO_TRINTA      ,
    tlDEZOITO_QRT_CINCO   ,
    tlDEZENOVE_ZERO       ,
    tlDEZENOVE_QUINZE     ,
    tlDEZENOVE_QRT_CINCO  ,
    tlDEZENOVE_TRINTA     );

  TFrmAgendamento = class(TFrmCRUD)
    pcAgendamento: TPageControl;
    tbConsultar: TTabSheet;
    pnConsultar: TPanel;
    sbConsultar: TScrollBox;
    gbConsultaFiltro: TGroupBox;
    lbConsultaDataInicio: TLabel;
    lbConsultaConsultor: TLabel;
    lbConsultaCliente: TLabel;
    lbConsultaConsultorObrigatorio: TLabel;
    lbConsultaClienteOpcional: TLabel;
    dtConsultaDataIniciol: TDateTimePicker;
    cbConsultaConsultor: TComboBox;
    cbConsultaCliente: TComboBox;
    tbCadastrar: TTabSheet;
    pnCadastrar: TPanel;
    sbCadastro: TScrollBox;
    gbCadastroConsultor: TGroupBox;
    lbCadastroNomeConsultor: TLabel;
    lbCadatroSegmento: TLabel;
    cbCadastroNomeConsultor: TComboBox;
    edCadastroSegmentoConsultor: TEdit;
    gbCadastroCliente: TGroupBox;
    lbCadastroCliente: TLabel;
    lbCadastroClienteCPF: TLabel;
    cbCadastroNomeCliente: TComboBox;
    edCadastroClienteCPF: TMaskEdit;
    gbCadastroAgendamento: TGroupBox;
    lbCadastroDataInicio: TLabel;
    lbCadastroHorario: TLabel;
    lbCadastroAsteristicoDataInicio: TLabel;
    lbCadastroAsteristicoHorario: TLabel;
    lbCadastroDuracao: TLabel;
    lbCadastroAsteristicoDuracao: TLabel;
    lbCadastroTermino: TLabel;
    lbCadastroAsteristicoTermino: TLabel;
    lbCadastroDataFinal: TLabel;
    lbCadastroAsteristicoDataFinal: TLabel;
    lbCadastroObservacao: TLabel;
    lbCadastroAsteristicoObservasao: TLabel;
    dtCadastroDataInicio: TDateTimePicker;
    dtCadastroDataFinal: TDateTimePicker;
    mmCadastroObservacao: TMemo;
    edCadastroCodigoConsultor: TIntegerEdit;
    lbCadastroCodigoConsultor: TLabel;
    edCadastroCodigoCliente: TIntegerEdit;
    lbCadastroCodigoCliente: TLabel;
    edCadastroHorarioTermino: TDateTimePicker;
    btnConsultaFiltrar: TBitBtn;
    lbConsultaPeriodo: TLabel;
    cbConsultaPeriodoDias: TComboBox;
    lbConsultaPeriodoDias: TLabel;
    cbCadastroDuracao: TComboBox;
    cbCadastroHorarioInicial: TComboBox;
    ppAgendamento: TPopupMenu;
    piMarcar: TMenuItem;
    piDesmarcar: TMenuItem;
    sgConsultaResultado: TStringGrid;
    procedure btnNovoClick(Sender: TObject);
    procedure cbCadastroDuracaoExit(Sender: TObject);
    procedure pcAgendamentoChange(Sender: TObject);
    procedure cbCadastroNomeConsultorChange(Sender: TObject);
    procedure cbCadastroNomeClienteChange(Sender: TObject);
    procedure dtCadastroDataInicioChange(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnConsultaFiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure piDesmarcarClick(Sender: TObject);
    procedure sgConsultaResultadoDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure piMarcarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FAGENDAMENTO          : TAGENDAMENTO;
    FRegraCRUDAgendamento : TRegraCRUDAgendamento;

    FRegreCRUDConsultor   : TRegraCRUDConsultor;
    FRegraCRUDCliente     : TRegraCRUDCliente;

    FDicionarioCores: TDictionary<String, TColor>;

    //Metodos Consulta:
    procedure CabecalhoResultadoConsulta(DataInicio: TDate; QtdDias: Integer);
    procedure LimparCabecalhoResultadoConsulta;

    procedure FiltroConsultaConsultor;
    procedure FiltroConsultaConsultorCliente;

    function RetornaLinha(linha: TTipoLinnhaHorario): Integer;

    //Metodos Cadastro:
    procedure CarregarHorariosCadastro;

    procedure LimpaCamposCadastro;

  protected
    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;

  public
      //Metodos Independentes:
    procedure ListarConsultores(Componente: TObject);
    procedure ListarClientesCadastro(Componente: TObject);

    function RetornaData(Data: TDate) : String;
    function RetornaTempo(Tempo: TTime): String;
    function RetornaDias(Dias: String): Integer;
  end;

var
  FrmAgendamento: TFrmAgendamento;

implementation

{$R *.dfm}

{ TFrmAgendamento }

uses
    UOpcaoPesquisa
  , UEntidade
  , UMensagens
  , UDialogo
  , DateUtils
  , UDM
  ;

const
  STR_OITO_ZERO           = '08:00';
  STR_OITO_QUINZE         = '08:15';
  STR_OITO_TRINTA         = '08:30';
  STR_OITO_QRT_CINCO      = '08:45';
  STR_NOVE_ZERO           = '09:00';
  STR_NOVE_QUINZE         = '09:15';
  STR_NOVE_TRINTA         = '09:30';
  STR_NOVE_QRT_CINCO      = '09:45';
  STR_DEZ_ZERO            = '10:00';
  STR_DEZ_QUINZE          = '10:15';
  STR_DEZ_TRINTA          = '10:30';
  STR_DEZ_QRT_CINCO       = '10:45';
  STR_ONZE_ZERO           = '11:00';
  STR_ONZE_QUINZE         = '11:15';
  STR_ONZE_TRINTA         = '11:30';
  STR_ONZE_QRT_CINCO      = '11:45';
  STR_TREZE_ZERO          = '13:00';
  STR_TREZE_QUINZE        = '13:15';
  STR_TREZE_TRINTA        = '13:30';
  STR_TREZE_QRT_CINCO     = '13:45';
  STR_QUATORZE_ZERO       = '14:00';
  STR_QUATORZE_QUINZE     = '14:15';
  STR_QUATORZE_TRINTA     = '14:30';
  STR_QUATORZE_QRT_CINCO  = '14:45';
  STR_QUINZE_ZERO         = '15:00';
  STR_QUINZE_QUINZE       = '15:15';
  STR_QUINZE_TRINTA       = '15:30';
  STR_QUINZE_QRT_CINCO    = '15:45';
  STR_DEZESSEIS_ZERO      = '16:00';
  STR_DEZESSEIS_QUINZE    = '16:15';
  STR_DEZESSEIS_TRINTA    = '16:30';
  STR_DEZESSEIS_QRT_CINCO = '16:45';
  STR_DEZESSETE_ZERO      = '17:00';
  STR_DEZESSETE_QUINZE    = '17:15';
  STR_DEZESSETE_TRINTA    = '17:30';
  STR_DEZESSETE_QRT_CINCO = '17:45';
  STR_DEZOITO_ZERO        = '18:00';
  STR_DEZOITO_QUINZE      = '18:15';
  STR_DEZOITO_TRINTA      = '18:30';
  STR_DEZOITO_QRT_CINCO   = '18:45';
  STR_DEZENOVE_ZERO       = '19:00';
  STR_DEZENOVE_QUINZE     = '19:15';
  STR_DEZENOVE_TRINTA     = '19:30';
  STR_DEZENOVE_QRT_CINCO  = '19:45';

  CNT_HORARIOS_CADASTRO: Array [TTipoLinnhaHorario] of string =
  (STR_OITO_ZERO          ,
  STR_OITO_QUINZE         ,
  STR_OITO_TRINTA         ,
  STR_OITO_QRT_CINCO      ,
  STR_NOVE_ZERO           ,
  STR_NOVE_QUINZE         ,
  STR_NOVE_TRINTA         ,
  STR_NOVE_QRT_CINCO      ,
  STR_DEZ_ZERO            ,
  STR_DEZ_QUINZE          ,
  STR_DEZ_TRINTA          ,
  STR_DEZ_QRT_CINCO       ,
  STR_ONZE_ZERO           ,
  STR_ONZE_QUINZE         ,
  STR_ONZE_TRINTA         ,
  STR_ONZE_QRT_CINCO      ,
  STR_TREZE_ZERO          ,
  STR_TREZE_QUINZE        ,
  STR_TREZE_TRINTA        ,
  STR_TREZE_QRT_CINCO     ,
  STR_QUATORZE_ZERO       ,
  STR_QUATORZE_QUINZE     ,
  STR_QUATORZE_TRINTA     ,
  STR_QUATORZE_QRT_CINCO  ,
  STR_QUINZE_ZERO         ,
  STR_QUINZE_QUINZE       ,
  STR_QUINZE_TRINTA       ,
  STR_QUINZE_QRT_CINCO    ,
  STR_DEZESSEIS_ZERO      ,
  STR_DEZESSEIS_QUINZE    ,
  STR_DEZESSEIS_TRINTA    ,
  STR_DEZESSEIS_QRT_CINCO ,
  STR_DEZESSETE_ZERO      ,
  STR_DEZESSETE_QUINZE    ,
  STR_DEZESSETE_TRINTA    ,
  STR_DEZESSETE_QRT_CINCO ,
  STR_DEZOITO_ZERO        ,
  STR_DEZOITO_QUINZE      ,
  STR_DEZOITO_TRINTA      ,
  STR_DEZOITO_QRT_CINCO   ,
  STR_DEZENOVE_ZERO       ,
  STR_DEZENOVE_QUINZE     ,
  STR_DEZENOVE_TRINTA     ,
  STR_DEZENOVE_QRT_CINCO  );

  CNT_COR_AGENDAMENTO = '%d';

procedure TFrmAgendamento.btnConsultaFiltrarClick(Sender: TObject);
var
  QtdDias          : Integer;
  ListaAgendamento : TList<TAgendamento>;
  somaData         : String;
begin
  try
    //Verifica se foi selecionado o consultor:
    if cbConsultaConsultor.ItemIndex = -1 then
    begin
      raise EValidacaoNegocio.Create(STR_AGENDAMENTO_CONSULTA_NAO_SELECIONOU_CONSULTOR);
    end;
    somaData:= DateToStr(dtConsultaDataIniciol.Date + StrToInt(cbConsultaPeriodoDias.Items[cbConsultaPeriodoDias.ItemIndex]));
    //Adicionar na lista todas as consultas desejadas:
    ListaAgendamento := TList<TAgendamento>.Create;
    // Atualizar Cabeçalho (Consulta):
    QtdDias:= RetornaDias(cbConsultaPeriodoDias.Items[cbConsultaPeriodoDias.ItemIndex]);
    CabecalhoResultadoConsulta(dtConsultaDataIniciol.Date, QtdDias);


    //Tipo de Filtro:
    if cbConsultaCliente.ItemIndex = -1 then
    begin
      //Filtra pelo consultor :
      FiltroConsultaConsultor;

    end
    else
    begin
      //Filtrar pelo consultor e cliente:
      FiltroConsultaConsultorCliente;

    end;
  except
    on E: Exception do
      begin
        FreeAndNil(ListaAgendamento);
        TDialogo.Excecao(E);
      end;
  end;

  FreeAndNil(ListaAgendamento);
end;

procedure TFrmAgendamento.btnGravarClick(Sender: TObject);
begin
  inherited;
  LimpaCamposCadastro;
end;

procedure TFrmAgendamento.btnLimparClick(Sender: TObject);
begin
  inherited;
  LimpaCamposCadastro;
  LimparCabecalhoResultadoConsulta;
end;

procedure TFrmAgendamento.btnNovoClick(Sender: TObject);
begin
  inherited;
  PosicionaCursorPrimeiroCampo;
end;

procedure TFrmAgendamento.CabecalhoResultadoConsulta(DataInicio: TDate;
  QtdDias: Integer);
const
  STR_DATE_TIME = 'Hora/Data';
  CNT_COL_HORAS = 0;
var
  Coluna, Linha, Indice : Integer;
begin
  Coluna        := 0;
  Linha         := 0;

  //Limpar Grid:
  LimparCabecalhoResultadoConsulta;

  // Criar Colunas de acordo com os dias desejado para filtro:
  sgConsultaResultado.ColCount  := QtdDias;

  //Posição zero inserir dado padrão:
  sgConsultaResultado.Cells[Coluna, Linha] := STR_DATE_TIME;

  //Definir total de linhas:
  sgConsultaResultado.RowCount := 45;

  //Inserir as datas nas coluas:
  for Indice := 0 to QtdDias do
  begin
    INC(Coluna);
    sgConsultaResultado.Cells[Coluna, Linha] := RetornaData(DataInicio + (Indice));
  end;

  //Inserir os horarios na primeira coluna:
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlOITO_ZERO          )] := STR_OITO_ZERO           ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlOITO_QUINZE        )] := STR_OITO_QUINZE         ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlOITO_TRINTA        )] := STR_OITO_TRINTA         ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlOITO_QRT_CINCO     )] := STR_OITO_QRT_CINCO      ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlNOVE_ZERO          )] := STR_NOVE_ZERO           ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlNOVE_QUINZE        )] := STR_NOVE_QUINZE         ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlNOVE_TRINTA        )] := STR_NOVE_TRINTA         ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlNOVE_QRT_CINCO     )] := STR_NOVE_QRT_CINCO      ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZ_ZERO           )] := STR_DEZ_ZERO            ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZ_QUINZE         )] := STR_DEZ_QUINZE          ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZ_TRINTA         )] := STR_DEZ_TRINTA          ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZ_QRT_CINCO      )] := STR_DEZ_QRT_CINCO       ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlONZE_ZERO          )] := STR_ONZE_ZERO           ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlONZE_QUINZE        )] := STR_ONZE_QUINZE         ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlONZE_TRINTA        )] := STR_ONZE_TRINTA         ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlONZE_QRT_CINCO     )] := STR_ONZE_QRT_CINCO      ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlTREZE_ZERO         )] := STR_TREZE_ZERO          ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlTREZE_QUINZE       )] := STR_TREZE_QUINZE        ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlTREZE_TRINTA       )] := STR_TREZE_TRINTA        ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlTREZE_QRT_CINCO    )] := STR_TREZE_QRT_CINCO     ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlQUATORZE_ZERO      )] := STR_QUATORZE_ZERO       ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlQUATORZE_QUINZE    )] := STR_QUATORZE_QUINZE     ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlQUATORZE_TRINTA    )] := STR_QUATORZE_TRINTA     ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlQUATORZE_QRT_CINCO )] := STR_QUATORZE_QRT_CINCO  ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlQUINZE_ZERO        )] := STR_QUINZE_ZERO         ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlQUINZE_QUINZE      )] := STR_QUINZE_QUINZE       ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlQUINZE_TRINTA      )] := STR_QUINZE_TRINTA       ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlQUINZE_QRT_CINCO   )] := STR_QUINZE_QRT_CINCO    ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZESSEIS_ZERO     )] := STR_DEZESSEIS_ZERO      ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZESSEIS_QUINZE   )] := STR_DEZESSEIS_QUINZE    ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZESSEIS_TRINTA   )] := STR_DEZESSEIS_TRINTA    ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZESSEIS_QRT_CINCO)] := STR_DEZESSEIS_QRT_CINCO ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZESSETE_ZERO     )] := STR_DEZESSETE_ZERO      ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZESSETE_QUINZE   )] := STR_DEZESSETE_QUINZE    ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZESSETE_TRINTA   )] := STR_DEZESSETE_TRINTA    ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZESSETE_QRT_CINCO)] := STR_DEZESSETE_QRT_CINCO ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZOITO_ZERO       )] := STR_DEZOITO_ZERO        ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZOITO_QUINZE     )] := STR_DEZOITO_QUINZE      ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZOITO_TRINTA     )] := STR_DEZOITO_TRINTA      ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZOITO_QRT_CINCO  )] := STR_DEZOITO_QRT_CINCO   ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZENOVE_ZERO      )] := STR_DEZENOVE_ZERO       ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZENOVE_QUINZE    )] := STR_DEZENOVE_QUINZE     ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZENOVE_QRT_CINCO )] := STR_DEZENOVE_TRINTA     ;
  sgConsultaResultado.Cells[CNT_COL_HORAS, RetornaLinha(tlDEZENOVE_TRINTA    )] := STR_DEZENOVE_QRT_CINCO  ;
end;

procedure TFrmAgendamento.CarregarHorariosCadastro;
var
   tipoLinhaHorario: TTipoLinnhaHorario;
begin
   cbCadastroHorarioInicial.Items.Clear;

   //Adicionar todos os horarios para consulta:
   for tipoLinhaHorario := Low(TTipoLinnhaHorario) to High(TTipoLinnhaHorario) do
   begin
    cbCadastroHorarioInicial.Items.Add(CNT_HORARIOS_CADASTRO[tipoLinhaHorario]);
   end;
end;

procedure TFrmAgendamento.cbCadastroNomeClienteChange(Sender: TObject);
var
  loCLIENTE : TCLIENTE;
begin
  if cbCadastroNomeCliente.ItemIndex <> -1 then
  begin
    loCLIENTE := TCLIENTE(cbCadastroNomeCliente.Items.Objects[cbCadastroNomeCliente.ItemIndex]);

    edCadastroCodigoCliente.IntegerNumber := loCLIENTE.ID;
    edCadastroClienteCPF.Text             := loCLIENTE.CPF;
  end;
end;

procedure TFrmAgendamento.cbCadastroNomeConsultorChange(Sender: TObject);
var
  loCONSULTOR : TCONSULTOR;
begin
  if cbCadastroNomeConsultor.ItemIndex <> -1 then
  begin
  loCONSULTOR := TCONSULTOR(cbCadastroNomeConsultor.Items.Objects[cbCadastroNomeConsultor.ItemIndex]);

  edCadastroCodigoConsultor.IntegerNumber := loCONSULTOR.ID;
  edCadastroSegmentoConsultor.Text        := loCONSULTOR.SEGMENTO;
  end;
end;

procedure TFrmAgendamento.dtCadastroDataInicioChange(Sender: TObject);
begin
  inherited;
  dtCadastroDataFinal.Date:= dtCadastroDataInicio.Date;
end;

procedure TFrmAgendamento.cbCadastroDuracaoExit(Sender: TObject);
var
  hh, mm :integer;
  vHora, vMinuto :integer;
  Hora, HoraSoma: String;

begin
  if cbCadastroHorarioInicial.ItemIndex <> -1 then
  begin
  Hora     := cbCadastroHorarioInicial.Items[cbCadastroHorarioInicial.ItemIndex];
  HoraSoma := cbCadastroDuracao.Items[cbCadastroDuracao.ItemIndex];

  hh:= StrToInt(Copy(Hora, 1, 2)) + StrToInt(Copy(HoraSoma, 1, 2));
  mm:= StrToInt(Copy(Hora, 4, 2)) + StrToInt(Copy(HoraSoma, 4, 2));

  vMinuto:= mm mod 60;
  vHora:=   hh + (mm div 60);

  edCadastroHorarioTermino.Time:= StrToTime(FormatFloat('00:', vHora) + FormatFloat('00', vMinuto));
  end;
end;

procedure TFrmAgendamento.FiltroConsultaConsultor;
const
  CNT_LINHA_ZERO = 0;
var
  AgendaConsultor : TArray<TAgendamento>;
  loAGENDAMENTO   : TAgendamento;

  ID         : Integer;
  Consultor  : String;

  DataInicial: TDate;
  QtdDias    : Integer;

  tipoLinhaHorario: TTipoLinnhaHorario;

  Linha      : Integer;
  Indice     : Integer;
begin

  Consultor       := TCONSULTOR(cbConsultaConsultor.Items.Objects[cbConsultaConsultor.ItemIndex]).NOME;
  ID              := TCONSULTOR(cbConsultaConsultor.Items.Objects[cbConsultaConsultor.ItemIndex]).ID;
  DataInicial     := dtConsultaDataIniciol.Date;
  QtdDias         := StrToIntDef(cbConsultaPeriodoDias.Items[cbConsultaPeriodoDias.ItemIndex], 0);
  AgendaConsultor := FRegraCRUDAgendamento.RetornaAgendamentosConsultor(Consultor, ID, DataInicial, QtdDias);

  for loAGENDAMENTO in  AgendaConsultor do
  begin
    //Procura a coluna correspondente:
    for Indice:= 0 to QtdDias do
    begin
      //Valida se a data da coluna é a mesma no array:
      if RetornaData(loAGENDAMENTO.DATA_INICIO) = sgConsultaResultado.Cells[Indice+1, CNT_LINHA_ZERO] then
      begin
        //Procura a linha correspondente:
        for tipoLinhaHorario := Low(TTipoLinnhaHorario) to High(TTipoLinnhaHorario) do
        begin
          //Valida se o horario da linha é a mesma no array:
          if CNT_HORARIOS_CADASTRO[tipoLinhaHorario] = RetornaTempo(loAGENDAMENTO.HORARIO_INICIO) then
          begin
            Linha:= Integer(tipoLinhaHorario);

            //Insere na GRID:
            sgConsultaResultado.Cells[Indice+1, Linha]  := loAGENDAMENTO.NOME_CLIENTE;
            sgConsultaResultado.Objects[Indice+1, Linha]:= loAGENDAMENTO;

            if loAGENDAMENTO.DURACAO = StrToTime('00:30') then
            begin
              sgConsultaResultado.Objects[Indice+1, Linha+1]:= loAGENDAMENTO;

            end;

            if loAGENDAMENTO.DURACAO = StrToTime('01:00') then
            begin
              sgConsultaResultado.Objects[Indice+1, Linha+1]:= loAGENDAMENTO;
              sgConsultaResultado.Objects[Indice+1, Linha+2]:= loAGENDAMENTO;
              sgConsultaResultado.Objects[Indice+1, Linha+3]:= loAGENDAMENTO;

            end;
            break;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmAgendamento.FiltroConsultaConsultorCliente;
const
  CNT_LINHA_ZERO = 0;
var
  AgendaConsultor : TArray<TAgendamento>;
  loAGENDAMENTO   : TAgendamento;

  ID_Consultor    : Integer;
  Consultor       : String;

  ID_Cliente      : Integer;
  Cliente         : String;

  DataInicial     : TDate;
  QtdDias         : Integer;

  tipoLinhaHorario: TTipoLinnhaHorario;

  Linha           : Integer;
  Indice          : Integer;
begin

  Consultor       := TCONSULTOR(cbConsultaConsultor.Items.Objects[cbConsultaConsultor.ItemIndex]).NOME;
  ID_Consultor    := TCONSULTOR(cbConsultaConsultor.Items.Objects[cbConsultaConsultor.ItemIndex]).ID;

  Cliente         := TCLIENTE(cbConsultaCliente.Items.Objects[cbConsultaCliente.ItemIndex]).NOME;
  ID_Cliente      := TCLIENTE(cbConsultaCliente.Items.Objects[cbConsultaCliente.ItemIndex]).ID;

  DataInicial     := dtConsultaDataIniciol.Date;
  QtdDias         := StrToIntDef(cbConsultaPeriodoDias.Items[cbConsultaPeriodoDias.ItemIndex], 0);
  AgendaConsultor := FRegraCRUDAgendamento.RetornaAgendamentosConsultorComCliente(Consultor
                                                                                , ID_Consultor
                                                                                , Cliente
                                                                                , ID_Cliente
                                                                                , DataInicial
                                                                                , QtdDias);

  for loAGENDAMENTO in  AgendaConsultor do
  begin
    //Procura a coluna correspondente:
    for Indice:= 0 to QtdDias do
    begin
      //Valida se a data da coluna é a mesma no array:
      if RetornaData(loAGENDAMENTO.DATA_INICIO) = sgConsultaResultado.Cells[Indice+1, CNT_LINHA_ZERO] then
      begin
        //Procura a linha correspondente:
        for tipoLinhaHorario := Low(TTipoLinnhaHorario) to High(TTipoLinnhaHorario) do
        begin
          //Valida se o horario da linha é a mesma no array:
          if CNT_HORARIOS_CADASTRO[tipoLinhaHorario] = RetornaTempo(loAGENDAMENTO.HORARIO_INICIO) then
          begin
            Linha:= Integer(tipoLinhaHorario);

            //Insere na GRID:
            sgConsultaResultado.Cells[Indice+1, Linha]  := loAGENDAMENTO.NOME_CLIENTE;
            sgConsultaResultado.Objects[Indice+1, Linha]:= loAGENDAMENTO;

            break;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmAgendamento.Finaliza;
begin
  inherited;
  FreeAndNil(FAGENDAMENTO);
  FreeAndNil(FRegraCRUDAgendamento);
  
  FreeAndNil(FRegreCRUDConsultor);
  FreeAndNil(FRegraCRUDCliente);
end;

procedure TFrmAgendamento.FormCreate(Sender: TObject);
begin
  inherited;
  FDicionarioCores := TDictionary<String, TColor>.Create;
  FDicionarioCores.Add('00:15', $00C4FEC2);
  FDicionarioCores.Add('00:30', $00C1FFFF);
  FDicionarioCores.Add('01:00', $00A7D9FE);
end;

procedure TFrmAgendamento.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FDicionarioCores);
end;

procedure TFrmAgendamento.FormShow(Sender: TObject);
begin
  inherited;
  LimparCabecalhoResultadoConsulta;
end;

procedure TFrmAgendamento.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  if pcAgendamento.ActivePage = tbCadastrar then
  begin
    tbCadastrar.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
  end;
end;

procedure TFrmAgendamento.Inicializa;
begin
  inherited;
  DefineEntidade(@FAGENDAMENTO, TAGENDAMENTO);
  DefineRegraCRUD(@FRegraCRUDAgendamento, TRegraCRUDAgendamento);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(VW_AGENDAMENTO)
    .DefineNomeCampoRetorno(VW_AGENDAMENTO_ID)
    .AdicionaFiltro(VW_AGENDAMENTO_NOME_CONSULTOR)
    .AdicionaFiltro(VW_AGENDAMENTO_NOME_CLIENTE)
    .AdicionaFiltro(VW_AGENDAMENTO_DATA_INICIO)
    .AdicionaFiltro(VW_AGENDAMENTO_DATA_TERMINO)
    .DefineNomePesquisa(STR_AGENDAMENTO));

  FAGENDAMENTO                       := TAGENDAMENTO.Create;
  FRegraCRUDAgendamento              := TRegraCRUDAgendamento.Create;

  FRegreCRUDConsultor                := TRegraCRUDConsultor.Create;
  FRegraCRUDCliente                  := TRegraCRUDCliente.Create;

  dtCadastroDataInicio.Date          := Now;
  dtCadastroDataFinal.Date           := Now;

  cbCadastroHorarioInicial.ItemIndex := -1;
  cbCadastroDuracao.ItemIndex        := -1;

  pcAgendamento.ActivePage           := tbConsultar;

  edCadastroHorarioTermino.Time      := 0;


  //Tela Consulta:
  ListarConsultores(cbConsultaConsultor);
  ListarClientesCadastro(cbConsultaCliente);

  dtConsultaDataIniciol.Date:= Now;
  cbConsultaPeriodoDias.ItemIndex:= -1;

  //Tela Cadastro:
  ListarConsultores(cbCadastroNomeConsultor);
  ListarClientesCadastro(cbCadastroNomeCliente);

  CarregarHorariosCadastro;
end;

procedure TFrmAgendamento.LimpaCamposCadastro;
begin
  //Tela Cadastro:
  //Consultor (Cadastro):
  cbCadastroNomeConsultor.ItemIndex := -1;
  edCadastroCodigoConsultor.Clear;
  edCadastroSegmentoConsultor.Clear;
  
  //Cliente (Cadastro):
  cbCadastroNomeCliente.ItemIndex   := -1;
  edCadastroCodigoCliente.Clear;
  edCadastroClienteCPF.Clear;

  //Agendamento (Cadastro):
  dtCadastroDataInicio.Date         := Now;
  dtCadastroDataFinal.Date          := Now;
  mmCadastroObservacao.Clear;

  cbCadastroHorarioInicial.ItemIndex := -1;
  cbCadastroDuracao.ItemIndex        := -1;

  edCadastroHorarioTermino.Time     := 0;

  //Tela Consulta:
  cbConsultaConsultor.ItemIndex     := -1;
  cbConsultaCliente.ItemIndex       := -1;
  cbConsultaPeriodoDias.ItemIndex   := -1;

  //dtConsultaDataIniciol.Date        := Now;
  //cbConsultaPeriodoDias.ItemIndex   := -1;

end;

procedure TFrmAgendamento.LimparCabecalhoResultadoConsulta;
var
  Linha, Coluna: integer;
begin
  Coluna:=0;

  for Linha:= 0 to Pred(sgConsultaResultado.RowCount) do
  begin
    INC(Coluna);
    sgConsultaResultado.Rows[Linha].Clear;
    sgConsultaResultado.Cells[coluna,linha] := '';
  end;

  sgConsultaResultado.ColCount := 2;
  sgConsultaResultado.RowCount := 2;

  sgConsultaResultado.FixedRows:= 1;
  sgConsultaResultado.FixedCols:= 1;
end;

procedure TFrmAgendamento.ListarClientesCadastro(Componente: TObject);
var
  loCLIENTE : TCLIENTE;
begin
  try
   TComboBox(Componente).Items.Clear;
    
    for loCLIENTE in FRegraCRUDCliente.RetornaClientes do
    begin
      TComboBox(Componente).AddItem(loCLIENTE.NOME, loCLIENTE);
    end;
  except
    on E: Exception do
      begin
        TDialogo.Excecao(E);
      end;
  end;
end;

procedure TFrmAgendamento.ListarConsultores(Componente: TObject);
var
  loCONSULTOR : TCONSULTOR;
begin
  try
    TComboBox(Componente).Items.Clear;
    
    for loCONSULTOR in FRegreCRUDConsultor.RetornaConsultores do
    begin
      TComboBox(Componente).AddItem(loCONSULTOR.NOME, loCONSULTOR);
    end;
  except
    on E: Exception do
      begin
        TDialogo.Excecao(E);
      end;
  end;
end;

procedure TFrmAgendamento.pcAgendamentoChange(Sender: TObject);
begin
  inherited;
  //Tela Cadastro:
  if pcAgendamento.ActivePage = tbCadastrar then
  begin
    ListarConsultores(cbCadastroNomeConsultor);
    ListarClientesCadastro(cbCadastroNomeCliente);
  end;
  
  //Tela Consulta
  if pcAgendamento.ActivePage = tbConsultar then
  begin
    ListarConsultores(cbConsultaConsultor);
    ListarClientesCadastro(cbConsultaCliente);
    LimparCabecalhoResultadoConsulta;
  end;
end;

procedure TFrmAgendamento.piMarcarClick(Sender: TObject);
const
  CNT_LINHA_ZERO  = 0;
  CNT_COLUNA_ZERO = 0;

begin
try
   with sgConsultaResultado do
   begin
     if Objects[Col, Row] = nil then
     begin
      pcAgendamento.ActivePage:= tbCadastrar;
      btnNovoClick(btnNovo);

      cbCadastroNomeConsultor.ItemIndex  := cbConsultaConsultor.ItemIndex;
      cbCadastroNomeConsultorChange(cbCadastroNomeConsultor);

      cbCadastroNomeCliente.ItemIndex    := cbConsultaCliente.ItemIndex;
      cbCadastroNomeClienteChange(cbCadastroNomeCliente);

      dtConsultaDataIniciol.Date         := StrToDate(Cells[col, CNT_LINHA_ZERO]);

      cbCadastroHorarioInicial.ItemIndex := cbCadastroHorarioInicial.Items.IndexOf(Cells[CNT_COLUNA_ZERO, Row]);
      cbCadastroDuracao.ItemIndex        := 0;

      mmCadastroObservacao.SetFocus;
     end
     else
     begin
       Application.MessageBox(pChar('Já possui uma consulta marcada nesse horário.'), pChar(STR_AVISO), MB_OK + MB_ICONEXCLAMATION);
     end;
   end;
except
   on E: Exception do
   begin
     TDialogo.Excecao(E);
   end;

  end;
end;

procedure TFrmAgendamento.piDesmarcarClick(Sender: TObject);
var
  loAGENDAMENTO: TAGENDAMENTO;
begin
 dmEntra21.IniciaTransacao;
 try
   with sgConsultaResultado do
   begin
     if Objects[Col, Row] <> nil then
     begin
       loAGENDAMENTO := TAGENDAMENTO(Objects[Col, Row]);
       FRegraCRUDAgendamento.Exclui(loAGENDAMENTO.ID);

       if '00:15' = RetornaTempo(loAGENDAMENTO.DURACAO) then
       begin
        Objects[Col, Row] := nil;
        Cells[Col, Row]   := '';
       end;

       if '00:30' = RetornaTempo(loAGENDAMENTO.DURACAO) then
       begin
        Objects[Col, Row] := nil;
        Cells[Col, Row]   := '';

        Objects[Col, Row+1] := nil;
        Cells[Col, Row]   := '';
       end;

       if '01:00' = RetornaTempo(loAGENDAMENTO.DURACAO) then
       begin
        Objects[Col, Row] := nil;
        Cells[Col, Row]   := '';

        Objects[Col, Row+1]:= nil;
        Cells[Col, Row]    := '';

        Objects[Col, Row+2]:= nil;
        Cells[Col, Row]    := '';

        Objects[Col, Row+3]:= nil;
        Cells[Col, Row]    := '';
       end;

       FreeAndNil(loAGENDAMENTO);

       Application.MessageBox(pChar('Demarcado com Sucesso!'), pChar('Aviso'), MB_ICONEXCLAMATION);
     end;
     Refresh;
   end;
   dmEntra21.FinalizaTransacao;;
 except
   on E: Exception do
   begin
     dmEntra21.AbortaTransacao;
     TDialogo.Excecao(E);
   end;
 end;
end;

procedure TFrmAgendamento.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  pcAgendamento.ActivePage := tbCadastrar;
end;

procedure TFrmAgendamento.PreencheEntidade;
begin
  inherited;
  FAGENDAMENTO.ID_CONSULTOR                := edCadastroCodigoConsultor.IntegerNumber;
  FAGENDAMENTO.NOME_CONSULTOR              := cbCadastroNomeConsultor.Items[cbCadastroNomeConsultor.ItemIndex];

  FAGENDAMENTO.ID_CLIENTE                  := edCadastroCodigoCliente.IntegerNumber;
  FAGENDAMENTO.NOME_CLIENTE                := cbCadastroNomeCliente.Items[cbCadastroNomeCliente.ItemIndex];

  FAGENDAMENTO.DATA_INICIO                 := dtCadastroDataInicio.Date;
  FAGENDAMENTO.DATA_TERMINO                := dtCadastroDataFinal.Date;

  FAGENDAMENTO.HORARIO_INICIO              := StrToTime(cbCadastroHorarioInicial.Items[cbCadastroHorarioInicial.ItemIndex]);
  FAGENDAMENTO.HORARIO_TERMINO             := edCadastroHorarioTermino.Time;
  FAGENDAMENTO.DURACAO                     := StrToTime(cbCadastroDuracao.Items[cbCadastroDuracao.ItemIndex]);

  FAGENDAMENTO.OBSERVACAO                  := mmCadastroObservacao.Text;
end;

procedure TFrmAgendamento.PreencheFormulario;
var
  loCONSULTOR : TCONSULTOR;
  loCLIENTE   : TCLIENTE;
begin
  inherited;
  //Consultor (Cadastro);
  edCadastroCodigoConsultor.IntegerNumber := FAGENDAMENTO.ID_CONSULTOR;
  cbCadastroNomeConsultor.ItemIndex       := cbCadastroNomeConsultor.Items.IndexOf(FAGENDAMENTO.NOME_CONSULTOR);
  loCONSULTOR := TCONSULTOR(cbCadastroNomeConsultor.Items.Objects[cbCadastroNomeConsultor.ItemIndex]);
  edCadastroSegmentoConsultor.Text        := loCONSULTOR.SEGMENTO;

  //Cliente (Cadastro):
  edCadastroCodigoCliente.IntegerNumber   := FAGENDAMENTO.ID_CLIENTE;
  cbCadastroNomeCliente.ItemIndex         := cbCadastroNomeCliente.Items.IndexOf(FAGENDAMENTO.NOME_CLIENTE);
  loCLIENTE := TCLIENTE(cbCadastroNomeCliente.Items.Objects[cbCadastroNomeCliente.ItemIndex]);
  edCadastroClienteCPF.Text               := loCLIENTE.CPF;
  
  //Agendamento (Cadastro):
  dtCadastroDataInicio.Date               := FAGENDAMENTO.DATA_INICIO;
  dtCadastroDataFinal.Date                := FAGENDAMENTO.DATA_TERMINO;

  cbCadastroHorarioInicial.ItemIndex      := cbCadastroHorarioInicial.Items.IndexOf(RetornaTempo(FAGENDAMENTO.HORARIO_INICIO));
  edCadastroHorarioTermino.Time           := FAGENDAMENTO.HORARIO_TERMINO;

  cbCadastroDuracao.ItemIndex             := cbCadastroDuracao.Items.IndexOf(RetornaTempo(FAGENDAMENTO.DURACAO));

  mmCadastroObservacao.Text               := FAGENDAMENTO.OBSERVACAO;
end;

function TFrmAgendamento.RetornaData(Data: TDate): String;
begin
  Result:= DateToStr(Data);
end;

function TFrmAgendamento.RetornaDias(Dias: String): Integer;
begin
  Result:= StrToIntDef(Dias, 0);
end;

function TFrmAgendamento.RetornaLinha(linha: TTipoLinnhaHorario): Integer;
begin
  Result:= Integer(linha);
end;

function TFrmAgendamento.RetornaTempo(Tempo: TTime): String;
begin
   Result:= Copy(TimeToStr(Tempo), 0, 5);
end;

procedure TFrmAgendamento.sgConsultaResultadoDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  loAGENDAMENTO: TAGENDAMENTO;
begin
  if sgConsultaResultado.Objects[ACol, ARow] <> nil then
  begin
     loAGENDAMENTO := TAGENDAMENTO(sgConsultaResultado.Objects[ACol, ARow]);

     sgConsultaResultado.Canvas.Brush.Color := FDicionarioCores.Items[RetornaTempo(loAGENDAMENTO.DURACAO)];
  end;

  sgConsultaResultado.Canvas.FillRect(Rect);
  sgConsultaResultado.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, sgConsultaResultado.Cells[ACol, ARow]);
end;

end.
