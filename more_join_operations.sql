SELECT id, title
 FROM movie
 WHERE yr=1962


select yr
from movie
where title = 'Citizen Kane'


select id, title, yr
from movie
where title like 'Star Trek%'


select id 
from actor 
where name = 'Glenn Close' 


select id 
from movie 
where title = 'Casablanca'


select name
from movie
join casting
on movie.id = movieid
join actor
on actorid = actor.id
where movie.id = '11768'



select name
from movie
join casting
on movie.id = movieid
join actor
on actorid = actor.id
where title = 'Alien'




select title
from movie
join casting
on movieid = movie.id
join actor
on actorid = actor.id
where name = 'Harrison Ford'



select title
from movie
join casting
on movieid = movie.id
join actor
on actorid = actor.id
where name = 'Harrison Ford' and ord != 1


select title,name
from movie
join casting
on movieid = movie.id
join actor
on actorid = actor.id
where yr = 1962  and ord = 1



SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
where name='John Travolta'
GROUP BY yr
HAVING COUNT(title)=(SELECT MAX(c) FROM
(SELECT yr,COUNT(title) AS c FROM
   movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
 where name='John Travolta'
 GROUP BY yr) AS t
)


select title, name
from movie
join casting
on movieid = movie.id
join actor
on actor.id = actorid
where ord = 1 and movieid in (SELECT movieid FROM casting
join movie
on movie.id = movieid
WHERE actorid IN (
  SELECT id FROM actor
  WHERE name='Julie Andrews'))




select actor.name
from actor 
join casting 
on (actor.id=casting.actorid)
where casting.ord=1
group by actor.name
having count(actor.name) >= 30
order by actor.name ASC;




select movie.title, count(casting.movieid)
from movie
join actor
on movie.id = actor.id
join casting
on movieid = movie.id
where yr = 1978
group by movie.title
order by count(casting.movieid) DESC, movie.title



select name
from actor
where name != 'Art Garfunkel' and id in  (select actorid
from casting
where movieid in (select movieid
from casting
where actorid = (select id
from actor
where actor.name like 'Art Garfunkel')))





