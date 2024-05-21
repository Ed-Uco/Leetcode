# Write your MySQL query statement below
select max(num) as num
from (select num, count(num) as c from MyNumbers group by num) as n
where n.c=1