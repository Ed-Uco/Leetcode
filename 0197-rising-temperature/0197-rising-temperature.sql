# Write your MySQL query statement below
select id
from( select id, 
lag(recordDate) over (order by recordDate) as prevDate,
lag(temperature) over (order by recordDate) as temprev, temperature,recordDate from Weather) as t
where temperature > t.temprev and DATEDIFF(recordDate, t.prevDate) = 1