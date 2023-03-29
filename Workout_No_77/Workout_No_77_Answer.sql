/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


1. Print odd Numbers between 1 to 10 .
2. Print even numbers between 1 to10.
3. Generate Date series – from today till
    Next month end.

*/

with recursive odd_numbers(_no) as
(
	select 1
	union all
	select _no+2 from odd_numbers
	where odd_numbers._no +2 < 10
)
select * from odd_numbers;



with recursive even_numbers(_no) as
(
	select 2
	union all
	select _no+2 from even_numbers
	where even_numbers._no +2 < 11
)
select * from even_numbers;


WITH RECURSIVE generate_date(_date) AS (
  SELECT now()::date
  UNION ALL
  SELECT _date + 1
  FROM generate_date
  WHERE _date  < (date_trunc('month',now()) + interval '2 month - 1 day')::date
)

SELECT *
FROM generate_date;