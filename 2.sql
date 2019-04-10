drop function if exists teacher_salary;
DELIMITER $$
create function teacher_salary(target_dept_name varchar(20)) returns double
begin
	declare ssum double default 0;
	declare cur double default 0;
   	declare done Boolean DEFAULT FALSE;  
	declare GETSRY cursor for 
			select instructor.salary
			from instructor
			where target_dept_name = instructor.dept_name;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

	open GETSRY;
    fetch GETSRY into cur;
    repeat
        set ssum = ssum+cur;
		fetch GETSRY into cur;
    until done
    end repeat;
	close GETSRY;
    return ssum;
end$$
DELIMITER ;

select dept_name, teacher_salary(dept_name) from department; 