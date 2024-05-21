# Write your MySQL query statement below
select machine_id, round(avg(sum_end-sum_start),3) as processing_time
from(select machine_id,
max(case when activity_type="start" then timestamp else 0 end)as sum_start,
max(case when activity_type="end" then timestamp else 0 end) as sum_end
from Activity
group by machine_id,process_id) as t
group by machine_id