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


