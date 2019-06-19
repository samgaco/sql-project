select count(id)
from stops


select id
from stops
where name = 'Craiglockhart'


select id, name
from route
join stops
on stops.id = route.stop
where company = 'LRT'
and num = 4


SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num
having count(*) = 2


SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53  and b.stop = 149


SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' and stopb.name like 'London%'


SELECT DISTINCT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=115  and b.stop =137


SELECT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53  and b.stop =230


SELECT distinct name, a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
join stops
on a.stop = id
WHERE b.stop=53 and a.company = 'LRT'






