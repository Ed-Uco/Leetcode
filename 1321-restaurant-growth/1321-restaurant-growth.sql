# Write your MySQL query statement below
with c as (
    select visited_on,
    sum(amount) amount
    from Customer
    group by visited_on
)
select visited_on,
sum(amount) over (order by visited_on rows 6 preceding) amount,
round(avg(amount) over(order by visited_on rows 6 preceding),2) average_amount
from c
order by visited_on
limit 100 offset 6