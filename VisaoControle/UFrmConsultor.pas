unit UFrmConsultor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, StdCtrls, PwCtrls, ExtCtrls
  , UUtilitarios
  , UConsultor
  , URegraCRUDConsultor, pngimage
  ;

type
  TFrmConsultor = class(TFrmCRUD)
    gbInformacoes: TGroupBox;
    lbNome: TLabel;
    lbEmail: TLabel;
    lbSenha: TLabel;
    edNome: TEdit;
    edEmail: TEdit;
    cbSegmentoProfissional: TComboBox;
    procedure cbSegmentoProfissionalExit(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    FCONSULTOR          : TCONSULTOR;
    FRegraCRUDConsultor : TRegraCRUDConsultor;

  protected
    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  FrmConsultor: TFrmConsultor;

implementation

{$R *.dfm}

{ TFrmConsultor }

uses
    UOpcaoPesquisa
  , UEntidade
  , UMensagens
  , UDialogo
  ;

procedure TFrmConsultor.btnLimparClick(Sender: TObject);
begin
  inherited;
  cbSegmentoProfissional.ItemIndex:= -1;
end;

procedure TFrmConsultor.cbSegmentoProfissionalExit(Sender: TObject);
begin
  inherited;
  try
  //Fazer chamada da classe URegraCRUDConsultor aqui:

  except
    on E: Exception do
    begin
      TDialogo.Excecao(E);
      edNome.SetFocus;
    end;
  end;
end;

procedure TFrmConsultor.Finaliza;
begin
  inherited;
  FreeAndNil(FCONSULTOR);
  FreeAndNil(FRegraCRUDConsultor);
end;

procedure TFrmConsultor.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  gbInformacoes.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmConsultor.Inicializa;
begin
  inherited;
  DefineEntidade(@FCONSULTOR, TCONSULTOR);
  DefineRegraCRUD(@FRegraCRUDConsultor, TRegraCRUDConsultor);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(VW_CONSULTOR)
    .DefineNomeCampoRetorno(VW_CONSULTOR_ID)
    .AdicionaFiltro(VW_CONSULTOR_NOME)
    .AdicionaFiltro(VW_CONSULTOR_SEGMENTO_PROFISSIONAL)
    .DefineNomePesquisa(STR_CONSULTOR));

  cbSegmentoProfissional.ItemIndex:= -1;

  FCONSULTOR          := TCONSULTOR.Create;
  FRegraCRUDConsultor := TRegraCRUDConsultor.Create;
end;

procedure TFrmConsultor.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNome.SetFocus;
end;

procedure TFrmConsultor.PreencheEntidade;
begin
  inherited;
  FCONSULTOR.NOME     := edNome.Text;
  FCONSULTOR.EMAIL    := edEmail.Text;
  FCONSULTOR.SEGMENTO := cbSegmentoProfissional.Items[cbSegmentoProfissional.ItemIndex];
end;

procedure TFrmConsultor.PreencheFormulario;
begin
  inherited;
   edNome.Text                      := FCONSULTOR.NOME;
   edEmail.Text                     := FCONSULTOR.EMAIL;
   cbSegmentoProfissional.ItemIndex := cbSegmentoProfissional.Items.IndexOf(FCONSULTOR.SEGMENTO);
end;

end.
