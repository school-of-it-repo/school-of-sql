/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Bring below expected output using Recursive CTE and Windowing
approach

previous_value|previous_sum|
--------------+------------+
             1|           1|
             2|           3|
             3|           6|
             4|          10|
             5|          15|
             6|          21|
             7|          28|
             8|          36|
             9|          45|
            10|          55|





*/

create table schoolofit.numbers
(
 id int
);

insert into schoolofit.numbers
select id from generate_series(1,10) a(id)

/

select
    id
from
    schoolofit.numbers;
/

/*
*ANSWER
*/

select
	id as previous_value
	,sum(id) over(order by id) as previous_sum
from schoolofit.numbers ;

/

with recursive counter(previous_value,previous_sum) as
(
	select 1,1
	union all
	select previous_value+1,previous_sum+previous_value+1
	from
		counter where previous_value<10
)


select * from counter;
