# Write your MySQL query statement below
Select employee_id,
department_id 
From Employee 
Where primary_flag = 'Y' 
OR (employee_id,department_id) in(Select employee_id,department_id From Employee 
group by employee_id having count(department_id)=1)
