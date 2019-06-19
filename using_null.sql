select name
from teacher
where dept is null

SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id)


select teacher.name, dept.name
from teacher
left join dept
on (teacher.dept = dept.id)


select teacher.name, dept.name
from teacher
right join dept
on (teacher.dept = dept.id)


select name, COALESCE( mobile, '07986 444 2266')
from teacher


select teacher.name, COALESCE(dept.name, 'None')
from teacher
left join dept
on (teacher.dept = dept.id)


select count(name), count(mobile)
from teacher


select dept.name, count(teacher.dept) 
from teacher
right join dept on(teacher.dept=dept.id) 
group by dept.name


select name,
case when dept in (1,2) then 'Sci' else 'Art' end
from teacher


select teacher.name
case when teacher.dept in (1, 2) then 'Sci'
when teacher.dept = 3 then 'Art'
else 'None' end from teacher;


select teacher.name,
case when  teacher.dept in (1, 2) then 'Sci'
when teacher.dept = 3 then 'Art'
else'None' end 
from teacher;


