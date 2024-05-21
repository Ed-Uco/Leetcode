with t as (
select min(event_date) as event_date,player_id from Activity group by player_id)
select
round(
sum(datediff(A1.event_date,a2.event_date)=1)/count(distinct a1.player_id),2) as fraction from
activity a1 join activity a2 on a1.player_id = a2.player_id 
join t on a2.event_date=t.event_date and a2.player_id=t.player_id