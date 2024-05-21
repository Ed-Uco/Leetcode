# Write your MySQL query statement below
select person as person_name from
(select person_name as person,sum(weight) over(order by turn asc) as sum_weight from Queue order by turn) as w
where sum_weight<=1000
order by sum_weight desc
limit 1