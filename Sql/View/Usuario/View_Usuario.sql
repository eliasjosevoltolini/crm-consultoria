create or replace view vw_usuario as
select u.id    "Código"
     , u.nome  "Usuário"
     , u.email "E-mail"
from usuario u
order by u.id;