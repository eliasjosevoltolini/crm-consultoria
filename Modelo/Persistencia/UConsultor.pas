unit UConsultor;

interface

uses
    UEntidade
  ;

type
  TConsultor = class(TENTIDADE)
  private
    FNome     : String;
    FEmail    : String;
    FSegmento : String;

  public
    property NOME     : String read FNome     write FNome;
    property EMAIL    : String read FEmail    write FEmail;
    property SEGMENTO : String read FSegmento write FSegmento;

  end;

  //Acesso banco de dados:
const
  TBL_CONSULTOR          = 'CONSULTOR';

  FLD_CONSULTOR_NOME     = 'NOME';
  FLD_CONSULTOR_EMAIL    = 'EMAIL';
  FLD_CONSULTOR_SEGMENTO = 'SEGMENTO_PROFISSIONAL';

  //View:
  VW_CONSULTOR           = 'VW_CONSULTOR';
  VW_CONSULTOR_ID        = 'Código';
  VW_CONSULTOR_NOME      = 'Consultor';
  VW_CONSULTOR_EMAIL     = 'E-mail';
  VW_CONSULTOR_SEGMENTO_PROFISSIONAL = 'Segmento Profissional';

implementation

end.
