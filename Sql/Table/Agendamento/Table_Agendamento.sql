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

