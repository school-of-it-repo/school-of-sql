/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Compare TWO tables




*/
drop table schoolofit.target_table ;
drop table schoolofit.staging_table ;

create table schoolofit.target_table
(

	data_1 varchar(20)
	,data_2 varchar(20)
	,data_3 varchar(30)
	,data_4 varchar(40)
);

insert into  schoolofit.target_table
(data_1,data_2,data_3,data_4)
values
('0,0','0,1','0,2','0,3'),
('1,0','1,1','1,2','1,3'),
('2,0','2,1','2,2','2,3'),
('3,0','3,1','3,2','3,3'),
('4,0','4,1','4,2','4,3'),
('5,0','5,1','5,2','5,3'),
('6,0','6,1','6,2','6,3'),
('7,0','7,1','7,2','7,3'),
('8,0','8,1','8,2','8,3'),
('9,0','9,1','9,2','9,3'),
('10,0','10,1','10,2','10,3');

select * from schoolofit.target_table ;

create table
	schoolofit.staging_table
as
	select
		*
	from
		schoolofit.target_table where 1=2 ;
commit;



select
	*
from
	schoolofit.staging_table ;



insert into  schoolofit.staging_table
(data_1,data_2,data_3,data_4)
values
('0,0','0,1','0,2','0,3'),
('1,0','1,1','1,2','1,3'),
('2,0','2,1','2,2','2,3'),
('11,0','0,1','0,2','0,3'),
('12,0','null','1,2','1,3'),
('2,0','null','stagin','2,3');

/

-- Answer -1

select 'target_table' as _source_system,t1.* from
(
select * from schoolofit.target_table
except
select * from schoolofit.staging_table st
)t1
union
select 'staging_table' as _source_system,t2.* from
(
select * from schoolofit.staging_table
except
select * from schoolofit.target_table
)t2
;

