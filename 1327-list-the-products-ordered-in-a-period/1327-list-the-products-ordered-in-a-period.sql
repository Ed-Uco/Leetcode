# Write your MySQL query statement below
select a.product_name as product_name, sum(b.unit) as unit
from Products a join Orders b on a.product_id=b.product_id
where month(b.order_date)= '02' and year(b.order_date)='2020'
group by product_name
having unit>='100'
