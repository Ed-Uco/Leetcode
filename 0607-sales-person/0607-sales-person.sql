# Write your MySQL query statement below

    with cte as (
        select sp.name as salesname from 
        SalesPerson sp left join Orders o
        on sp.sales_id=o.sales_id
        left join Company c on o.com_id=c.com_id
        where c.name='RED')

 select name from SalesPerson
 where name not in(select salesname from cte)


