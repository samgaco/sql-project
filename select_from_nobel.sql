SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950


SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

select yr, subject
from nobel
where winner = 'Albert Einstein'

select winner
from nobel
where subject = 'Peace' and yr >= 2000

select yr, subject, winner
from nobel
where subject = 'Literature' 
   and (yr >= 1980 and yr <= 1989)


SELECT * FROM nobel
  WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter', 'Barack Obama'
)


select winner
from nobel
where winner like 'John %'


select yr, subject, winner
from nobel
where (subject = 'Physics' and yr = 1980  or subject = 'Chemistry' and yr = 1984) 



select yr, subject, winner
from nobel
where yr = 1980 and subject != 'Medicine' and subject != 'Chemistry'


select yr, subject, winner
from nobel
where (subject = 'Medicine' and yr < 1910) or (subject = 'Literature' and yr >= 2004)


select * from nobel
where winner like 'Peter Gr%nberg'


select * from nobel
where winner like 'Eugene o%neill'


select winner, yr, subject from nobel
where winner like 'Sir%'
order by yr desc ;


SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject,winner