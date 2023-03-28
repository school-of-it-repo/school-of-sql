/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Mark Flag ‘Y’  to first matched condition


Each id , I  want to display Flag ‘Y’ to the first row that match the given condition.
Condition is : Flag Y to the 1st row which have Amount greater or equal to 400
and Order greater or equal to 3.


*/

create table schoolofit.order_rank
(
id int,
amount int,
order_no int
);

insert into schoolofit.order_rank
values
 (1,       100,       1),
 (1,       300,       2),
 (1,       320,       3),
 (2,       100,       1),
 (2,       200,       2),
 (2,       423,       3),
 (2,       613,       4),
 (3,       112,       1),
 (3,       218,       2),
 (3,       290,       3),
 (3,       480,       4);

select
	*
from
	schoolofit.order_rank;
