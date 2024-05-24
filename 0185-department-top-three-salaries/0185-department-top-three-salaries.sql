# Write your MySQL query statement below
with cte as (select e.*, d.name dname, dense_rank() over (partition by e.departmentId order by e.salary desc) d
             from employee e
                      left join department d
                                on e.departmentId = d.id)

select dname Department, name Employee, salary
from cte
where d <= 3