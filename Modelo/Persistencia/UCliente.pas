unit UCliente;

interface

uses
    UEntidade
  ;

type
  TCliente = class(TENTIDADE)
  private
    //Pessoal:
    FNome            : String;
    FCPF             : String;
    FRG              : String;
    FDataNascimento  : TDate;

    //Contato:
    FResidencia      : String;
    FComercial       : String;
    FCelular         : String;
    FRecado          : String;
    FEmail           : String;

    //Endereço:
    FRua             : String;
    FNumero          : String;
    FBairro          : String;
    FCidade          : String;
    FUF              : String;
    FComplemento     : String;
    FPontoReferencia : String;

  public
    //Pessoal:
    property NOME            : String read FNome             write FNome;
    property CPF             : String read FCPF              write FCPF;
    property RG              : String read FRG               write FRG;
    property DATA_NASCIMENTO : TDate  read FDataNascimento   write FDataNascimento;

    //Contato:
    property RESIDENCIAL      : String read FResidencia      write FResidencia;
    property COMERCIAL        : String read FComercial       write FComercial;
    property CELULAR          : String read FCelular         write FCelular;
    property RECADO           : String read FRecado          write FRecado;
    property EMAIL            : String read FEmail           write FEmail;

    //Endereço:
    property RUA              : String read FRua             write FRua;
    property NUMERO           : String read FNumero          write FNumero;
    property BAIRRO           : String read FBairro          write FBairro;
    property CIDADE           : String read FCidade          write FCidade;
    property UF               : String read FUF              write FUF;
    property COMPLEMENTO      : String read FComplemento     write FComplemento;
    property PONTO_REFERENCIA : String read FPontoReferencia write FPontoReferencia;

  end;

  //Acesso banco de dados:
const
  TBL_CLIENTE                  = 'CLIENTE';

  //Pessoal:
  FLD_CLIENTE_NOME             = 'NOME';
  FLD_CLIENTE_CPF              = 'CPF';
  FLD_CLIENTE_RG               = 'RG';
  FLD_CLIENTE_DATA_NASCIMENTO  = 'DATA_NASCIMENTO';

  //Contato:
  FLD_CLIENTE_RESIDENCIAL      = 'RESIDENCIAL';
  FLD_CLIENTE_COMERCIAL        = 'COMERCIAL';
  FLD_CLIENTE_CELULAR          = 'CELULAR';
  FLD_CLIENTE_RECADO           = 'RECADO';
  FLD_CLIENTE_EMAIL            = 'EMAIL';

  //Endereço:
  FLD_CLIENTE_RUA              = 'RUA';
  FLD_CLIENTE_NUMERO           = 'NUMERO';
  FLD_CLIENTE_BAIRRO           = 'BAIRRO';
  FLD_CLIENTE_CIDADE           = 'CIDADE';
  FLD_CLIENTE_UF               = 'UF';
  FLD_CLIENTE_COMPLEMENTO      = 'COMPLEMENTO';
  FLD_CLIENTE_PONTO_REFERENCIA = 'PONTO_REFERENCIA';

  //View:
  VW_CLIENTE                   = 'VW_CLIENTE';
  VIEW_CLIENTE_ID              = 'Código';
  VIEW_CLIENTE_NOME            = 'Cliente';
  VIEW_CLIENTE_CPF             = 'CPF';
  VIEW_CLIENTE_RG              = 'RG';
  VIEW_CLIENTE_DATA_NASCIMENTO = 'Data de Nascimento';
  VIEW_CLIENTE_RESIDENCIA      = 'Residencial';
  VIEW_CLIENTE_COMERCIAL       = 'Comercial';
  VIEW_CLIENTE_CELULAR         = 'Celular';
  VIEW_CLIENTE_RECADO          = 'Recado';
  VIEW_CLIENTE_EMAIL           = 'E-mail';
  VIEW_CLIENTE_RUA             = 'Rua';
  VIEW_CLIENTE_NUMERO          = 'Número';
  VIEW_CLIENTE_BAIRRO          = 'Bairro';
  VIEW_CLIENTE_CIDADE          = 'Cidade';
  VIEW_CLIENTE_UF              = 'UF';
  VIEW_CLIENTE_COMPLEMENTO 		 = 'Complemento';
  VIEW_CLIENTE_PONTO_REFERENCIA= 'Ponto de Referencia';

implementation

end.
