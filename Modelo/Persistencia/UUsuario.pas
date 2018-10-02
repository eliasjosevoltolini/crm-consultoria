unit UUsuario;

interface

uses
    UEntidade
  ;

type
  TUSUARIO = class(TENTIDADE)
  private
    FNome  : String;
    FSenha : String;
    FEmail : String;

  public
    property NOME  : String read FNome  write FNome;
    property SENHA : String read FSenha write FSenha;
    property EMAIL : String read FEmail write FEmail;
  end;

  //Acesso banco de dados:
const
  TBL_USUARIO       = 'USUARIO';
  FLD_USUARIO_NOME  = 'NOME';
  FLD_USUARIO_SENHA = 'SENHA';
  FLD_USUARIO_EMAIL = 'EMAIL';

  //View:
  VW_USUARIO        = 'VW_USUARIO';
  VW_USUARIO_ID     = 'Código';
  VW_USUARIO_NOME   = 'Usuário';
  VW_USUARIO_EMAIL  = 'E-mail';

implementation

end.
