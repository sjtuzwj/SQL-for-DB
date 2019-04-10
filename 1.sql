drop function if exists LevelToGrade;
DELIMITER $$
CREATE FUNCTION LevelToGrade(Level varchar(2)) RETURNS integer
begin
	if Level='A+' Then
    return 100;
   elseif Level='A ' THEN
   	 return 95;
   elseif Level='A-' THEN
   	 return 90;
   elseif Level='B+' THEN
   	 return 85;
   elseif Level='B ' THEN
   	 return 80;
   elseif Level='B-' THEN
   	 return 75;
   elseif Level='C+' THEN
   	 return 70;
   elseif Level='C ' THEN
   	 return 65;
   elseif Level='C-' THEN 
   	 return 60;
   else RETURN 0;
   end if;
end$$
DELIMITER ;

select distinct student.name,course.title,leveltograde(takes.grade)
from student,teaches,takes,course,advisor
where student.ID = advisor.s_ID and
	teaches.ID = advisor.i_ID and
    takes.ID = student.ID and
    takes.course_id = teaches.course_id and
    takes.course_id = course.course_id and
    (takes.grade = "C " or takes.grade = "C-") and
    takes.sec_id = teaches.sec_id and
    takes.semester = teaches.semester and
    takes.year = teaches.year;