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