# Write your MySQL query statement below
select e.employee_id,
e.name,
r.cc as reports_count,
r.av as average_age
from (select reports_to,count(reports_to) as cc,round(avg(age),0) as av from Employees group by reports_to) as r
join Employees e on e.employee_id=r.reports_to
group by e.employee_id,e.name
order by e.employee_id