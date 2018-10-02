unit UMensagens;

interface

resourcestring
  //Geral
  STR_ATENCAO                    = 'Aten��o';
  STR_AVISO                      = 'Aviso';
  STR_CONFIRMACAO                = 'Confirma��o';
  STR_CAPTION_ABA_CONSULTAS      = '%d - %s...';
  STR_TODOS                      = 'Todos';
  STR_ATUALIZADO                 = 'atualizado(a)';
  STR_GRAVADO                    = 'gravado(a)';
  STR_EXCLUIDO                   = 'excluido(a)';
  STR_OPERACAO_COM_SUCESSO       = '%s com c�digo %d %s com sucesso.';
  STR_ENTIDADE_NAO_ENCONTRADA    = '%s com c�digo %d n�o foi encontrado(a)';
  STR_CONFIRMAR_SAIDA_DO_SISTEMA = 'Confirmar sa�da do sistema ?';

  //Entidade
  STR_ENTIDADE_GRAVADA_COM_SUCESSO    = '%s gravado(a) com sucesso! C�digo gerado: %d.';
  STR_ENTIDADE_ATUALIZADO_COM_SUCESSO = '%s atualizado(a) com sucesso!';
  STR_ENTIDADE_DESEJA_EXCLUIR         = 'Deseja realmente excluir este(a) %s?';

  //CRUD
  STR_CRUD_CABECALHO = 'Cadastro de %s';

  //Transa��o
  STR_JA_EXISTE_TRANSACAO_ATIVA   = 'N�o foi possivel abrir uma nova transa��o! Motivo: J� existe uma transa��o ativa.';
  STR_NAO_EXISTE_TRANSACAO_ATIVA  = 'N�o foi possivel %s a transa��o! Motivo: N�o existe uma transa��o ativa.';
  STR_VALIDA_TRANSACAO_ATIVA      = 'Opera��o abortada! Motivo: Para realizar esta opera��o � necess�rio ter uma transa��o ativa.';
  STR_ABORTAR                     = 'abortar';
  STR_FINALIZAR                   = 'finalizar';

  //USUARIO:
  STR_USUARIO                     = 'Usu�rio';
  STR_USUARIO_NOME_NAO_INFORMADO  = 'Nome do usu�rio n�o foi informado.';
  STR_USUARIO_NOME_JA_EXISTE      = 'Nome do usu�rio j� existe!';
  STR_USUARIO_ACESSO_INVALIDO     = 'Usu�rio ou senha est�o inv�lidos!';

  STR_USUARIO_SENHA_DIFERENTE    = 'senha informada est� divergente!';
  STR_USUARIO_EMAIL_INVALIDO     = 'E-mail informado � inv�lido!';

  STR_SENHA_NAO_SEGURA           = 'Senha digitada n�o � segura, senha deve ter no m�nimo %d caracteres';
  STR_SENHAS_NAO_CONFEREM        = 'Senhas n�o conferem';
  STR_SENHA_ATUAL_NAO_CONFERE    = 'Senha atual n�o confere';

  //CONSULTOR:
  STR_CONSULTOR                    = 'Consultor';
  STR_CONSULTOR_NOME_NAO_INFORMADO = 'Nome do consultor n�o foi informado.';
  STR_CONSULTOR_NOME_JA_EXISTE     = 'Nome do consultor j� existe!';
  STR_CONSULTOR_EMAIL_INVALIDO     = 'E-mail informado � inv�lido!';

  //CLIENTE:
  STR_CLIENTE     = 'Cliente';
  STR_CLIENTE_NOME_NAO_INFORMADO       = 'Nome do cliente n�o foi informado.';
  STR_CLIENTE_NOME_JA_EXISTE           = 'Nome do cliente j� existe!';
  STR_CLIENTE_EMAIL_INVALIDO           = 'E-mail informado � inv�lido!';
  STR_CLIENTE_CPF_INVALIDO             = 'CPF informado � inv�lido!';
  STR_CLIENTE_DATA_NASCIMENTO_INVALIDA = 'Data de nascimento informado � inv�lido!';

  //AGENDAMENTO:
  STR_AGENDAMENTO                                   = 'Agendamento';
  STR_AGENDAMENTO_CONSULTA_NAO_SELECIONOU_CONSULTOR = 'Selecione o consultor para filtrar.';
  STR_AGENDAMENTO_JA_POSSUI_HORARIO_MARCADO         = 'O Consultor selecionado j� possui um hor�rio marcado na data informado. Favor verificar o tempo de atendimento!';

  //NOTIFICA��O:
  STR_NOTIFICAO_NAO_SELECIONOU_CONSULTOR = 'Selecione o consultor para gerar o relat�rio.';


implementation

end.
