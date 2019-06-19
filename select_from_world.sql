SELECT name, continent, population FROM world

SELECT name FROM world
WHERE population >= 200000000

select name, gdp/population as per_capita from world
where population >= 200000000

select name, population/1000000 as population
from world
where continent = 'South America'

select name, population
from world
where name in ('France', 'Italy', 'Germany')

select name
from world
where name like '%United%'

select name, population, area
from world
where area > 3000000 or population > 250000000

select name, population, area
from world
where (area > 3000000 and population <250000000) or (area < 3000000 and population >250000000)

select name, ROUND(population/1000000,2) as population, ROUND(gdp/1000000000,2) as gdp
from world
where continent = 'South America'

select name, round((gdp/population/1000))*1000 as per_capita 
from world
where gdp >= 1000000000000

SELECT name,  capital
  FROM world
 WHERE length(name) = length(capital)

SELECT name, capital
FROM world
where LEFT(name,1) = LEFT(capital,1) and name <> capital


SELECT name
   FROM world
WHERE name LIKE '%a%' 
      and name like '%e%'
      and name like '%o%'
      and name like '%u%'
      and name like '%i%'
      and name not like '% %'
