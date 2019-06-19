SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'


SELECT id,stadium,team1,team2
  FROM game
 where id = 1012


SELECT player,teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
  where teamid = 'GER'


select team1, team2, player
from game join goal on (id=matchid)
where player like 'Mario%'


SELECT player, teamid, coach, gtime
from goal join eteam on teamid=id
where gtime <=10

select mdate, teamname
from game join eteam 
on (team1=eteam.id)
where coach = 'Fernando Santos' 


select player
from goal join game
on id = matchid
where stadium = 'National Stadium, Warsaw'



SELECT distinct player
  FROM game JOIN goal ON matchid = id 
    WHERE ((team1='GER' or team2='GER') and teamid != 'GER')


SELECT teamname, count(*)
  FROM eteam JOIN goal ON id=teamid
 group by teamname


select stadium, count(teamid)
from game join goal on matchid = id
group by stadium


SELECT matchid,mdate, count(*)
  FROM goal JOIN game ON matchid = id 
 WHERE (team1 = 'POL' OR team2 = 'POL')
 group by mdate, matchid


select matchid, mdate, count(*) as count
from goal join game on matchid = id
where (team1 = 'GER' OR team2 = 'GER') and teamid = 'GER'
group by mdate, matchid



SELECT mdate,
  team1,
  SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) AS score1,
  team2,
  SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) AS score2
  FROM game JOIN goal 
  ON matchid = id
  GROUP BY mdate, team1, team2
  




