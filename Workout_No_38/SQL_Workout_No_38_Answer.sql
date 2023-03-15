/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Write an SQL query to Find the person who does belongs
to the same group.

For Example : Person ‘John’ from to ‘Group-A’ and associated peoples are
 ‘jack’,’gery’


*/

select
	id
	,name
	,group_name
	,string_agg(name,',') over
	    (
            partition by group_name
            rows between unbounded preceding and unbounded following exclude current row
	    ) as assoicated_people
from
	schoolofit.peoples peoples1
order by id ;