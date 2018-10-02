unit URepositorioUsuario;

interface

uses
    URepositorioDB
  , UEntidade
  , UUsuario
  , SqlExpr
  ;

type
  TRepositorioUsuario = class(TRepositorioDB<TUSUARIO>)
  protected
    //Atribui os dados do banco no objeto
    procedure AtribuiDBParaEntidade(const coUSUARIO: TUSUARIO); override;
    //Atribui os dados do objeto no banco
    procedure AtribuiEntidadeParaDB(const coUSUARIO: TUSUARIO;
                                    const coSQLQuery: TSQLQuery); override;
  public
    constructor Create;

    function RetornaPeloLogin(const csLogin: String): TUSUARIO;
  end;

implementation

{ TRepositorioUsuario }

uses
    UDM
  , UMensagens
  ;

const
  CNT_SELECT_PELO_LOGIN = 'select * from usuario where nome = :nome';

procedure TRepositorioUsuario.AtribuiDBParaEntidade(const coUSUARIO: TUSUARIO);
begin
  inherited;
  coUSUARIO.NOME  := FSQLSelect.FieldByName(FLD_USUARIO_NOME).AsString;
  coUSUARIO.SENHA := FSQLSelect.FieldByName(FLD_USUARIO_SENHA).AsString;
  coUSUARIO.EMAIL := FSQLSelect.FieldByName(FLD_USUARIO_EMAIL).AsString;
end;

procedure TRepositorioUsuario.AtribuiEntidadeParaDB(const coUSUARIO: TUSUARIO;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  coSQLQuery.ParamByName(FLD_USUARIO_NOME).AsString  := coUSUARIO.NOME;
  coSQLQuery.ParamByName(FLD_USUARIO_SENHA).AsString := coUSUARIO.SENHA;
  coSQLQuery.ParamByName(FLD_USUARIO_EMAIL).AsString := coUSUARIO.EMAIL;
end;

constructor TRepositorioUsuario.Create;
begin
  Inherited Create(TUSUARIO, TBL_USUARIO, FLD_ENTIDADE_ID, STR_USUARIO);
end;

function TRepositorioUsuario.RetornaPeloLogin(const csLogin: String): TUSUARIO;
begin
  FSQLSelect.Close;
  FSQLSelect.CommandText := CNT_SELECT_PELO_LOGIN;
  FSQLSelect.Prepared    := True;
  FSQLSelect.ParamByName(FLD_USUARIO_NOME).AsString := csLogin;
  FSQLSelect.Open;

  Result := nil;
  if not FSQLSelect.Eof then
    begin
      Result := TUSUARIO.Create;
      AtribuiDBParaEntidade(Result);
    end;
end;

end.
