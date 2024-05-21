# Write your MySQL query statement below
WITH CTE_LOW AS(
    select * from Accounts where income <20000
),
CTE_AVE AS(
    select * from Accounts where income between 20000 and 50000
),
CTE_HIGH AS(
    select * from Accounts where income >50000
)
select "Low Salary" as Category,count(*) as accounts_count from CTE_LOW
union
select "Average Salary" as Category,count(*) as accounts_count from CTE_AVE
union
select "High Salary" as Category,count(*) as accounts_count from CTE_HIGH
