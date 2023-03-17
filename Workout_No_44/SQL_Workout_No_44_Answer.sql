/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Problem statement:  From sales data , Find the person  who is increasing sales revenue
continuously more than 3 months.





*/

drop table schoolofit.employee_awards;
create table schoolofit.employee_awards
(
log_id serial
,employee_id int
,employee_name varchar(40)
,sales_dated_on date
,sales_amount int
);

insert into schoolofit.employee_awards
(employee_id,employee_name,sales_dated_on,sales_amount)
values
(1,'Person-A','2023-01-01',1000),
(1,'Person-A','2023-02-01',2000),
(1,'Person-A','2023-03-01',3000),
(1,'Person-A','2023-04-01',3200),
(1,'Person-A','2023-05-01',400),
(1,'Person-A','2023-06-01',300),
(1,'Person-A','2023-07-01',3000),
(1,'Person-A','2023-08-01',4000),
(1,'Person-A','2023-09-01',2000),
(1,'Person-A','2023-10-01',500),
(1,'Person-A','2023-11-01',6000),
(1,'Person-A','2023-12-01',600),
(2,'Person-B','2023-01-01',4000),
(2,'Person-B','2023-02-01',3000),
(2,'Person-B','2023-03-01',2000),
(2,'Person-B','2023-04-01',3200),
(2,'Person-B','2023-05-01',4000),
(2,'Person-B','2023-06-01',300),
(2,'Person-B','2023-07-01',500),
(2,'Person-B','2023-08-01',700),
(2,'Person-B','2023-09-01',8000),
(2,'Person-B','2023-10-01',9000),
(2,'Person-B','2023-11-01',10000),
(2,'Person-B','2023-12-01',1200);

/

select
	*
from
	schoolofit.employee_awards;
/

with _cte as (
select
	log_id
	,employee_id
	,employee_name
	,sales_dated_on
	,sales_amount
	,lag(sales_amount) over(partition by employee_id order by sales_dated_on)
	,case when

	sales_amount - lag(sales_amount) over(partition by employee_id order by sales_dated_on) > 0 then 0 else 1 end as _case

from
	schoolofit.employee_awards
),
_cleaned_data as (
select
	log_id
	,employee_id
	,employee_name
	,sales_dated_on
	,sales_amount
	,_case
	,sum(_case)over(partition by employee_id order by sales_dated_on) as _bucket
from
	_cte
),
_sales_summary_data as (
select
	employee_id
	,employee_name
	,min(sales_dated_on)
	,max(sales_dated_on)

	,_bucket
	,abs(EXTRACT(year FROM age(min(sales_dated_on),max(sales_dated_on)))*12
   +
   EXTRACT(month FROM age(min(sales_dated_on),max(sales_dated_on)))) _continuous_sales_increase
from
	_cleaned_data
group by _bucket,employee_id,employee_name
)
select
	employee_id
	,employee_name
	,min as start_date
	,max as end_date
	,_continuous_sales_increase as  continuous_sales
from
	_sales_summary_data
where
	_continuous_sales_increase >=3;
