# Write your MySQL query statement below
(select name as results
 from Users u
          join MovieRating mr on u.user_id = mr.user_id
 group by name
 order by count(mr.rating) desc, name asc
 limit 1)
union all
(select m.title as results
 from Movies m
          join MovieRating mr on m.movie_id = mr.movie_id
 where month(created_at) = 2
 and year(created_at) = 2020
 group by title
 order by avg(rating) desc, title asc
 limit 1)