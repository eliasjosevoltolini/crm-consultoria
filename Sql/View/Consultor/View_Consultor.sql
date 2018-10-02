create or replace view vw_consultor as
select c.id    					"Código"
     , c.nome  					"Consultor"
     , c.email 					"E-mail"
     , c.segmento_profissional  "Segmento Profissional"
from consultor c
order by c.id;