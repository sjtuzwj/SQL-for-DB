drop view if exists a;
CREATE VIEW a(ID,A_num) 
AS select takes.ID,count(takes.grade) 
from takes 
where   takes.grade = 'A ' 
        OR takes.grade = 'A+' 
group by takes.ID;

SELECT student.dept_name, student.id as s_id, 
       if(a.A_NUM>1,'A','B') AS level, 
       student.name AS s_name,
       a.A_num 
from a, student 
WHERE student.id=a.id and 
      student.id NOT in (select distinct ID from takes where grade >='C')
order by student.dept_name, level, A_num DESC;






