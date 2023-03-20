/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Understanding SQL  Order of Execution. Select vs limit




*/

create table schoolofit.numbers
(
 id int
);

insert into schoolofit.numbers
select id from generate_series(1,10) a(id)

/

select
	count(*)
from
	schoolofit.numbers n
limit 5;
/


