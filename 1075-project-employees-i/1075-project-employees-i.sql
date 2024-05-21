# Write your MySQL query statement below
select p.project_id,
round(sum(e.experience_years)/count(e.experience_years),2) as average_years
from Project p join Employee e on p.employee_id=e.employee_id and e.experience_years is not null
group by p.project_id