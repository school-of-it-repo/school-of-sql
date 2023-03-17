/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Problem statement: Add another column Output and show Fizz, Buzz and FizzBuzz based on
Below conditions.
	if Number is divide by 3 then ‘Fizz’ , Number is divide by ‘5’ then ‘Buzz’,
Number is divide by 3 and 5 then FizzBuzz



*/

drop table schoolofit.fizzbuzz;
/
create table schoolofit.fizzbuzz
(id int);
/
insert into schoolofit.fizzbuzz
select id from generate_series(1,20) as temp(id)
/
select
	id
from
	schoolofit.fizzbuzz;

/

select
	id
	,case
		when mod(id,15)=0 then 'FizzBuzz'
		when mod(id,5)=0 then 'Buzz'
		when mod(id,3)=0 then 'Fizz'
	end as _ouput
from
	schoolofit.fizzbuzz;