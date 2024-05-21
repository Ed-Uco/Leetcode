# Write your MySQL query statement below
select 
distinct num as ConsecutiveNums
from (select id,num,lag(num) over(order by id) as prev,
            lag(id) over(order by id) as idprev,
            lead(num) over(order by id) as next,
            lead(id) over(order by id) as idnext from Logs) as co
where prev = num and next=num and idprev+1=id and id+1=idnext