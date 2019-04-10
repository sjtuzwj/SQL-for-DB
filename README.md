# SQL-for-DB

活动2
①“上导师的课程成绩仍取得C及以下的学生”的姓名及课程名、成绩   

②基于cursor用procedure或function实现一个查询每个专业的老师总薪资 例如 select dept_name, teacher_salary(dept_name) from department;    

③学校为每个专业科系拟定奖学金，希望初步确定人选奖学金人选。其中A类要求为至少2门课获得A及A以上评级 ，B类奖学金为至少1门课获得A及A以上评级,且不存在科目为C类。     
尝试用sql统计筛选得到全校获得A类奖学金和B类奖学金的学生，其统计结果格式如下从左到右依次为（专业名，奖金类型，学生学号，学生姓名，A类科目数）   
dept_name   level   s_id   s_name    A_num   
CS                A     8802    Lee          4     
CS                B     8800    Mary        1   
SE                A     8822     Lucy        3    
