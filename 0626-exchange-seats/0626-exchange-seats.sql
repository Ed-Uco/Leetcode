# Write your MySQL query statement below
select 
se.id,
case when se.id%2!= 0 and se.stu_next is null then se.student
     when se.id%2!= 0 then se.stu_next 
     else se.stu_prev end as student
from (
select
 id,
 student,
 lag(student) over (order by id) as stu_prev,
 lead(student) over(order by id) as stu_next from Seat
 order by id
 ) as se