# Write your MySQL query statement below
With C1 as
(select product_id, new_price as price, row_number () over(partition by product_id order by change_date desc) rn
from Products where change_date<'2019-08-17')

Select p.product_id, IfNULL(c1.price,10) price from (Select distinct product_id from Products) p
left join (Select * from C1 where rn=1) C1 on p.product_id=c1.product_id