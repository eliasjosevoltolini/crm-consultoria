unit UFrmCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, StdCtrls, PwCtrls, ExtCtrls, Mask
  , UUtilitarios
  , UCliente
  , URegraCRUDCliente, ComCtrls, pngimage
  ;

type
  TFrmCliente = class(TFrmCRUD)
    sbCentro: TScrollBox;
    gbDadosPessoais: TGroupBox;
    lbNome: TLabel;
    lbCpf: TLabel;
    lbRG: TLabel;
    lbDataNascimento: TLabel;
    edNome: TEdit;
    edCPF: TMaskEdit;
    edRG: TEdit;
    gbContatos: TGroupBox;
    lbResidencial: TLabel;
    lbComercial: TLabel;
    lbCelular: TLabel;
    lbEmail: TLabel;
    edResidencial: TMaskEdit;
    edComercial: TMaskEdit;
    edCelular: TMaskEdit;
    edEmail: TEdit;
    gbEndereco: TGroupBox;
    lbRua: TLabel;
    lbBairro: TLabel;
    lbNumero: TLabel;
    lbCidade: TLabel;
    lbUF: TLabel;
    lbComplemento: TLabel;
    lbPontoDeReferencia: TLabel;
    edRua: TEdit;
    edBairro: TEdit;
    edNumero: TEdit;
    edCidade: TEdit;
    cbUF: TComboBox;
    edComplemento: TEdit;
    edPontoDeReferencia: TEdit;
    edRecado: TEdit;
    lbRecado: TLabel;
    edDataNascimento: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    FCLIENTE          : TCLIENTE;
    FRegraCRUDCliente : TRegraCRUDCliente;

  protected
    procedure Inicializa; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.dfm}

{ TFrmCliente }

uses
    UOpcaoPesquisa
  , UEntidade
  , UMensagens
  , UDialogo
  ;

procedure TFrmCliente.btnGravarClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
end;

procedure TFrmCliente.btnLimparClick(Sender: TObject);
begin
  inherited;

  sbCentro.VertScrollBar.Position:= 0;
  cbUF.ItemIndex:= -1;

  edNome.Clear;
  edCPF.Clear;
  edRG.Clear;
  edDataNascimento.Date:= Now;

  edResidencial.Clear;
  edComercial.Clear;
  edCelular.Clear;
  edRecado.Clear;
  edEmail.Clear;

  edRua.Clear;
  edNumero.Clear;
  edBairro.Clear;
  edCidade.Clear;
  edComplemento.Clear;
  edPontoDeReferencia.Clear;
end;

procedure TFrmCliente.btnNovoClick(Sender: TObject);
begin
  inherited;
  sbCentro.VertScrollBar.Position:= 0;
end;

procedure TFrmCliente.FormShow(Sender: TObject);
begin
  inherited;
  sbCentro.VertScrollBar.Position:= 0;

  btnNovoClick(btnNovo);
  cbUF.ItemIndex:= -1;
  edDataNascimento.Date:= Now;
end;

procedure TFrmCliente.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  sbCentro.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmCliente.Inicializa;
begin
  inherited;
  DefineEntidade(@FCLIENTE, TCLIENTE);
  DefineRegraCRUD(@FRegraCRUDCliente, TRegraCRUDCliente);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(VW_CLIENTE)
    .DefineNomeCampoRetorno(VIEW_CLIENTE_ID)
    .AdicionaFiltro(VIEW_CLIENTE_NOME)
    .AdicionaFiltro(VIEW_CLIENTE_CPF)
    .AdicionaFiltro(VIEW_CLIENTE_RG)
    .AdicionaFiltro(VIEW_CLIENTE_DATA_NASCIMENTO)
    .AdicionaFiltro(VIEW_CLIENTE_RESIDENCIA)
    .AdicionaFiltro(VIEW_CLIENTE_COMERCIAL)
    .AdicionaFiltro(VIEW_CLIENTE_CELULAR)
    .AdicionaFiltro(VIEW_CLIENTE_RECADO)
    .AdicionaFiltro(VIEW_CLIENTE_EMAIL)
    .AdicionaFiltro(VIEW_CLIENTE_RUA)
    .AdicionaFiltro(VIEW_CLIENTE_NUMERO)
    .AdicionaFiltro(VIEW_CLIENTE_BAIRRO)
    .AdicionaFiltro(VIEW_CLIENTE_CIDADE)
    .AdicionaFiltro(VIEW_CLIENTE_UF)
    .AdicionaFiltro(VIEW_CLIENTE_COMPLEMENTO)
    .AdicionaFiltro(VIEW_CLIENTE_PONTO_REFERENCIA)
    .DefineNomePesquisa(STR_CLIENTE));
end;

procedure TFrmCliente.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNome.SetFocus;
end;

procedure TFrmCliente.PreencheEntidade;
begin
  inherited;
  //Pessoal:
  FCLIENTE.NOME             := edNome.Text;
  FCLIENTE.CPF              := edCPF.Text;
  FCLIENTE.RG               := edRG.Text;
  FCLIENTE.DATA_NASCIMENTO  := edDataNascimento.Date;

  //Contato:
  FCLIENTE.RESIDENCIAL      := edResidencial.Text;
  FCLIENTE.COMERCIAL        := edComercial.Text;
  FCLIENTE.CELULAR          := edCelular.Text;
  FCLIENTE.RECADO           := edRecado.Text;
  FCLIENTE.EMAIL            := edEmail.Text;

  //Endereço:
  FCLIENTE.RUA              := edRua.Text;
  FCLIENTE.NUMERO           := edNumero.Text;
  FCLIENTE.BAIRRO           := edBairro.Text;
  FCLIENTE.CIDADE           := edCidade.Text;
  FCLIENTE.UF               := cbUF.Items[cbUF.ItemIndex];
  FCLIENTE.COMPLEMENTO      := edComplemento.Text;
  FCLIENTE.PONTO_REFERENCIA := edPontoDeReferencia.Text;
end;

procedure TFrmCliente.PreencheFormulario;
begin
  inherited;
  //Pessoal:
  edNome.Text                  := FCLIENTE.NOME;
  edCPF.Text                   := FCLIENTE.CPF;
  edRG.Text                    := FCLIENTE.RG;
  edDataNascimento.Date        := FCLIENTE.DATA_NASCIMENTO;

  //Contato:
  edResidencial.Text           := FCLIENTE.RESIDENCIAL;
  edComercial.Text             := FCLIENTE.COMERCIAL;
  edCelular.Text               := FCLIENTE.CELULAR;
  edRecado.Text                := FCLIENTE.RECADO;
  edEmail.Text                 := FCLIENTE.EMAIL;

  //Endereço:
  edRua.Text                   := FCLIENTE.RUA;
  edNumero.Text                := FCLIENTE.NUMERO;
  edBairro.Text                := FCLIENTE.BAIRRO;
  edCidade.Text                := FCLIENTE.CIDADE;
  cbUF.ItemIndex               := cbUF.Items.IndexOf(FCLIENTE.UF);
  edComplemento.Text           := FCLIENTE.COMPLEMENTO;
  edPontoDeReferencia.Text     := FCLIENTE.PONTO_REFERENCIA;
end;

end.

