--2994
select A.name, 
round(sum((B.hours * 150.0) + (((B.hours * 150.0) * C.bonus) / 100.0)), 1) as salary
from doctors as A
inner join attendances as B on B.id_doctor = A.id
inner join work_shifts as C on C.id = B.id_work_shift
group by A.id
order by salary DESC