CREATE DATABASE DBAgendamento;

CREATE TABLE `usuario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `senha` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_usuario` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



CREATE TABLE `consultor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `segmento_profissional` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_nome_segmento_profissional` (`nome`,`segmento_profissional`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;



CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `cpf` varchar(30) NOT NULL,
  `rg` varchar(30) NOT NULL,
  `data_nascimento` date NOT NULL,
  `residencial` varchar(20) DEFAULT NULL,
  `comercial` varchar(20) DEFAULT NULL,
  `celular` varchar(60) DEFAULT NULL,
  `recado` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `rua` varchar(60) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `bairro` varchar(60) NOT NULL,
  `cidade` varchar(60) NOT NULL,
  `uf` varchar(3) NOT NULL,
  `complemento` varchar(80) NOT NULL,
  `ponto_referencia` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_nome_cpf_data_nascimento` (`nome`,`cpf`,`data_nascimento`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

CREATE TABLE `agendamento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_consultor` int(10) unsigned NOT NULL,
  `nome_consultor` varchar(60) NOT NULL,
  `id_cliente` int(10) unsigned NOT NULL,
  `nome_cliente` varchar(60) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_termino` date NOT NULL,
  `horario_inicio` time NOT NULL,
  `horario_termino` time NOT NULL,
  `duracao` time NOT NULL,
  `observacao` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_id_consultor_data_inicio_horario_inicio` (`id_consultor`,`data_inicio`,`horario_inicio`),
  KEY `FK_agendamento_cliente` (`id_cliente`),
  CONSTRAINT `FK_agendamento_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_agendamento_consultor` FOREIGN KEY (`id_consultor`) REFERENCES `consultor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

