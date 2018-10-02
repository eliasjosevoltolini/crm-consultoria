create or replace view vw_usuario as
select u.id    "Código"
     , u.nome  "Usuário"
     , u.email "E-mail"
from usuario u
order by u.id;


create or replace view vw_consultor as
select c.id    					"Código"
     , c.nome  					"Consultor"
     , c.email 					"E-mail"
     , c.segmento_profissional  "Segmento Profissional"
from consultor c
order by c.id;


create or replace view vw_cliente as
select c.id     					"Código"
     , c.nome   					"Cliente"
     , c.cpf    					"CPF"
     , c.rg     					"RG"
     , c.data_nascimento			"Data de Nascimento"
     , c.residencial 				"Residencial"
     , c.comercial					"Comercial"
     , c.celular   					"Celular"
     , c.recado						"Recado"
     , c.email						"E-mail"
     , c.rua						"Rua"
     , c.numero						"Número"
     , c.bairro						"Bairro"
     , c.cidade						"Cidade"
     , c.uf							"UF"
     , c.complemento				"Complemento"
     , c.ponto_referencia			"Ponto de Referencia"
from cliente c
order by c.id;    


create or replace view vw_agendamento as
select a.id					"Código Agendamento"
     , a.id_consultor		"Código Consultor"
     , a.nome_consultor		"Consultor"
     , a.id_cliente 		"Código Cliente"
     , a.nome_cliente		"Cliente"
     , DATE_FORMAT(a.data_inicio, '%d/%m/%Y')  "Data Inícial"
     , DATE_FORMAT(a.data_termino, '%d/%m/%Y') "Data Termino"
     , a.horario_inicio		"Horario Inícial"
     , a.horario_termino    "Horario Termino"
     , a.duracao            "Duração"
     , a.observacao         "Observação"
from agendamento a, consultor cs, cliente cl
where a.id_consultor = cs.id
  and a.id_cliente   = cl.id
order by a.data_inicio DESC;