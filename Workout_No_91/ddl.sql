/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Group the occupation.
Note : The empty cell data for columns with less than the maximum number of names per occupation
(in this case, the Professor and Actor columns) are filled with NULL values.

*/


create table schoolofit.biggest_sum
(id int);

insert into schoolofit.biggest_sum
(id)
values
(34),(12),(56),(78),(90),(2),(5),(6),(12),(67);

select
	id
from
	schoolofit.biggest_sum ;