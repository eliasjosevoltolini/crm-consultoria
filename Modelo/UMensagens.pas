unit UMensagens;

interface

resourcestring
  //Geral
  STR_ATENCAO                    = 'Atenção';
  STR_AVISO                      = 'Aviso';
  STR_CONFIRMACAO                = 'Confirmação';
  STR_CAPTION_ABA_CONSULTAS      = '%d - %s...';
  STR_TODOS                      = 'Todos';
  STR_ATUALIZADO                 = 'atualizado(a)';
  STR_GRAVADO                    = 'gravado(a)';
  STR_EXCLUIDO                   = 'excluido(a)';
  STR_OPERACAO_COM_SUCESSO       = '%s com código %d %s com sucesso.';
  STR_ENTIDADE_NAO_ENCONTRADA    = '%s com código %d não foi encontrado(a)';
  STR_CONFIRMAR_SAIDA_DO_SISTEMA = 'Confirmar saída do sistema ?';

  //Entidade
  STR_ENTIDADE_GRAVADA_COM_SUCESSO    = '%s gravado(a) com sucesso! Código gerado: %d.';
  STR_ENTIDADE_ATUALIZADO_COM_SUCESSO = '%s atualizado(a) com sucesso!';
  STR_ENTIDADE_DESEJA_EXCLUIR         = 'Deseja realmente excluir este(a) %s?';

  //CRUD
  STR_CRUD_CABECALHO = 'Cadastro de %s';

  //Transação
  STR_JA_EXISTE_TRANSACAO_ATIVA   = 'Não foi possivel abrir uma nova transação! Motivo: Já existe uma transação ativa.';
  STR_NAO_EXISTE_TRANSACAO_ATIVA  = 'Não foi possivel %s a transação! Motivo: Não existe uma transação ativa.';
  STR_VALIDA_TRANSACAO_ATIVA      = 'Operação abortada! Motivo: Para realizar esta operação é necessário ter uma transação ativa.';
  STR_ABORTAR                     = 'abortar';
  STR_FINALIZAR                   = 'finalizar';

  //USUARIO:
  STR_USUARIO                     = 'Usuário';
  STR_USUARIO_NOME_NAO_INFORMADO  = 'Nome do usuário não foi informado.';
  STR_USUARIO_NOME_JA_EXISTE      = 'Nome do usuário já existe!';
  STR_USUARIO_ACESSO_INVALIDO     = 'Usuário ou senha estão inválidos!';

  STR_USUARIO_SENHA_DIFERENTE    = 'senha informada está divergente!';
  STR_USUARIO_EMAIL_INVALIDO     = 'E-mail informado é inválido!';

  STR_SENHA_NAO_SEGURA           = 'Senha digitada não é segura, senha deve ter no mínimo %d caracteres';
  STR_SENHAS_NAO_CONFEREM        = 'Senhas não conferem';
  STR_SENHA_ATUAL_NAO_CONFERE    = 'Senha atual não confere';

  //CONSULTOR:
  STR_CONSULTOR                    = 'Consultor';
  STR_CONSULTOR_NOME_NAO_INFORMADO = 'Nome do consultor não foi informado.';
  STR_CONSULTOR_NOME_JA_EXISTE     = 'Nome do consultor já existe!';
  STR_CONSULTOR_EMAIL_INVALIDO     = 'E-mail informado é inválido!';

  //CLIENTE:
  STR_CLIENTE     = 'Cliente';
  STR_CLIENTE_NOME_NAO_INFORMADO       = 'Nome do cliente não foi informado.';
  STR_CLIENTE_NOME_JA_EXISTE           = 'Nome do cliente já existe!';
  STR_CLIENTE_EMAIL_INVALIDO           = 'E-mail informado é inválido!';
  STR_CLIENTE_CPF_INVALIDO             = 'CPF informado é inválido!';
  STR_CLIENTE_DATA_NASCIMENTO_INVALIDA = 'Data de nascimento informado é inválido!';

  //AGENDAMENTO:
  STR_AGENDAMENTO                                   = 'Agendamento';
  STR_AGENDAMENTO_CONSULTA_NAO_SELECIONOU_CONSULTOR = 'Selecione o consultor para filtrar.';
  STR_AGENDAMENTO_JA_POSSUI_HORARIO_MARCADO         = 'O Consultor selecionado já possui um horário marcado na data informado. Favor verificar o tempo de atendimento!';

  //NOTIFICAÇÃO:
  STR_NOTIFICAO_NAO_SELECIONOU_CONSULTOR = 'Selecione o consultor para gerar o relatório.';


implementation

end.
