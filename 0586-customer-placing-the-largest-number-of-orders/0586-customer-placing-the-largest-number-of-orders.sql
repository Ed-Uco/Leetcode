# Write your MySQL query statement below
select customer_number
from (select customer_number, count(customer_number) as cc
      from Orders
      group by customer_number
      order by cc desc
      limit 1) as c