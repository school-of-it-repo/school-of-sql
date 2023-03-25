/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Understanding SQL Windowing – OVER - Exercise


*/


select
	employee_id
	,first_name
	,last_name
	 ,department_id
	 ,salary
	 ,round(avg(salary) over(),2) as _avg_salary
	 ,round(salary - avg(salary) over(),2) as _salary_diff
from
schoolofit.hr_employee he