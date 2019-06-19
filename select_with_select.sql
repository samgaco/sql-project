SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')



select name from world
where continent = 'Europe' and gdp/population > 
  (select gdp/population from world
    where name = 'United Kingdom')



select name, continent from world
where continent = 'South America' or continent = 'Oceania'
order by name


select name, population from world
where population >
  (select population from world
   where name = 'Canada') and population <
 (select population from world
   where name =  'Poland')


select name, concat(round((population*100)/80716000), '%')
from world
where continent = 'Europe'


SELECT name
  FROM world
 WHERE gdp > ALL(SELECT gdp
                           FROM world
                          WHERE continent = 'Europe' and gdp>0)



SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)



select continent, name
from world x
where name <= all( select name
                  from world y
                   where x.continent = y.continent
                    )


select name, continent, population
from world x
where 25000000 > all(
                       select population
                       from world y
                       where x.continent = y.continent
                                       )


select name, continent from world x
where population >  all( select population*3 from world y
                         where y.continent = x.continent
and y.name != x.name)







