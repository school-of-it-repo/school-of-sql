/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Given this table calculate the ratio of Gender Female  to male

This example will help you to understand how to handle ZERO division  ERROR in  SQL

*/

select
	sum( case when gender='FEMALE' then 1 else 0 end)
	/coalesce(nullif(sum(case when gender='MALE' then 1 else 0 end),0),1) as _ratio
from
	schoolofit.calculate_ratio;