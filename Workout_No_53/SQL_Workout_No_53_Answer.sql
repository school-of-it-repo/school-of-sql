/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: Group similar location based on user_id and continuous period.
For example user id 1 stay in USA continuously from JAN to APRIL.
Fill ‘NA’ if there is NO record found.  Example. User id 1 , there is NO entry for MAY  .
 So ‘NA’ for MAY



*/
drop table schoolofit.user_address ;
create table schoolofit.user_address
(
user_id int
,year int
,month varchar(20)
,location varchar(20)
);

insert into schoolofit.user_address
(user_id,year,month,location)
values
(1,2022,'JAN','USA'),
(1,2022,'FEB','USA'),
(1,2022,'MAR','USA'),
(1,2022,'APR','USA'),
(1,2022,'JUN','USA'),
(1,2022,'JUL','USA'),
(1,2022,'AUG','IND'),
(1,2022,'OCT','IND'),
(1,2022,'NOV','USA'),
(1,2022,'DEC','USA'),
(2,2022,'JAN','UK'),
(2,2022,'FEB','UK'),
(2,2022,'MAR','UK'),
(2,2022,'APR','UK'),
(2,2022,'JUN','USA'),
(2,2022,'JUL','USA'),
(2,2022,'AUG','EUROPE');

select * from
	schoolofit.user_address ;
/

with _cleaned_data as
(
 select
 	user_id
 	,year
 	,month
 	,location
 	,to_date(concat_ws('-',year,month,'01'),'YYYY-MON-DD') as _cleaned_date

 from
 	schoolofit.user_address
 )
, _find_max_and_min_date as
(
	select
		min(_cleaned_date) as _record_start_date
		,max(_cleaned_date) as _record_end_date
	from
		_cleaned_data

)
, _generate_date_range as (
	select
		id::DATE as _date_id
	from
		_find_max_and_min_date,
		generate_series(_find_max_and_min_date._record_start_date,_find_max_and_min_date._record_end_date,'1 months') as _date(id)
)
,_filling_missing_entry as
(
	select
		_cd.user_id
		,_gdr._date_id
	from
		_generate_date_range _gdr
		cross join (select distinct user_id from _cleaned_data) _cd
 )
, _base_data as
(

	select
		_fme.user_id
 	,to_char(_fme._date_id,'YYYY')::INT as _year
 	,to_char(_fme._date_id,'MON') as _month

 	,coalesce (_cd.location ,'NA') as _location
 	,coalesce(_cd._cleaned_date,_fme._date_id) as _cleaned_date
	from
	_filling_missing_entry _fme
	left join _cleaned_data _cd on _fme.user_id= _cd.user_id and  _fme._date_id= _cd._cleaned_date
)
,_find_gap as (
select
	user_id
	,_year
	,_month
	,_location
	,_cleaned_date
	,case when _location= lag(_location) over (partition by user_id order by _cleaned_date ) then 0 else 1 end as _gap
from
	_base_data
)
,_final_data as (
select
	user_id
	,_year
	,_month
	,_location
	,_cleaned_date
	,sum(_gap) over(partition by user_id order by _cleaned_date) as _bucket
from
	_find_gap

)


select
	user_id

	,min(_cleaned_date) as start_period
	,max((DATE_TRUNC('MONTH', _cleaned_date )+ INTERVAL '1 MONTH - 1 day')) ::DATE as end_period
	,max(_location) as location
from
	_final_data
group by
	user_id,_bucket
order by user_id,start_period;