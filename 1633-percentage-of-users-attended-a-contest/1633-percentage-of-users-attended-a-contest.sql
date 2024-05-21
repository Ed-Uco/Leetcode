# Write your MySQL query statement below
select
r.contest_id,
round(count(r.user_id)/(select count(user_id)from Users)*100,2) as percentage
from Register r
/*sum(case when u.user_id is null then 0 else 1 end) as user_users,*/
group by r.contest_id
order by percentage desc, r.contest_id asc