# Write your MySQL query statement below
select a.student_id, a.student_name,
c.subject_name,
count(b.subject_name) as attended_exams
from Students a 
cross join Subjects c
left join Examinations b on a.student_id=b.student_id and c.subject_name=b.subject_name
group by a.student_id,c.subject_name,a.student_name
order by a.student_id, c.subject_name