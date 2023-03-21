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