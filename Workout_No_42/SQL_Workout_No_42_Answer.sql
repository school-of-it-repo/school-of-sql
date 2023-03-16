/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Problem statement:  Data Cleanup. We received this question from our whatsup group.


*/

create table schoolofit.user_request_11
(
id int
,col1 varchar(10)
,col2 varchar(10)
,col3 varchar(20)
);
truncate table schoolofit.user_request_11;
insert into schoolofit.user_request_11
(id,col1,col2,col3)
values
(1,'ABC',null,null),
(1,null,'DEF',null),
(1,null,'FGH',null),
(1,null,'IJK',null),
(1,null,null,'MNO'),
(1,null,null,'PQR'),
(1,null,null,'STU'),
(1,null,null,'XYZ');


select
	id
	,col1
	,col2
	,col3
from
	schoolofit.user_request_11;

/


with _data as (
select id,'col1' as col_name,col1 as value from  schoolofit.user_request_11
union all
select id,'col2' ,col2 from  schoolofit.user_request_11
union all
select id,'col3',col3 from  schoolofit.user_request_11
),
_cleaned_data as (
select
	id
	,col_name
	,value
	,row_number() over (partition by col_name order by value) as _row_number
from
	_data
where
	value is not null
)

select
	id
	,max(case when col_name='col1' then value else null end) as col_1
	,max(case when col_name='col2' then value else null end) as col_2
	,max(case when col_name='col3' then value else null end) as col_3
from
	_cleaned_data
group by id,_row_number
order by _row_number
