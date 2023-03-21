/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: Fill Most recent non-blank value for each of several columns

*/
drop table schoolofit.fill_recent_value ;
create table schoolofit.fill_recent_value
(
customer varchar(20),
dated_on date ,
sales int ,
orders int ,
purchase int ,
expense int);

insert into schoolofit.fill_recent_value
(customer,dated_on,sales,orders,purchase,expense)
values
('A', (now()- interval '10 day') :: DATE,100,null,600,30),
('A', (now()- interval '8 day') :: DATE,200,1000,500,null),
('A', (now()- interval '6 day') :: DATE,300,null,86,30),
('A', (now()- interval '5 day') :: DATE,400,null,40,30),
('A', (now()- interval '4 day') :: DATE,100,null,null,null),
('A', (now()- interval '3 day') :: DATE,500,10,100,50),
('B', (now()- interval '20 day') :: DATE,0,null,null,30),
('B', (now()- interval '18 day') :: DATE,0,1000,null,null),
('B', (now()- interval '16 day') :: DATE,null,2000,null,30),
('B', (now()- interval '15 day') :: DATE,1400,3000,null,30),
('B', (now()- interval '14 day') :: DATE,20,6000,null,null),
('B', (now()- interval '13 day') :: DATE,null,null,null,25),
('C', (now()) :: DATE,11,12,13,15),
('D', (now()) :: DATE,null,null,null,null);

select
	*
from
	schoolofit.fill_recent_value ;
