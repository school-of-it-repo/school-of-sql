/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------


Problem statement: List all the projects for which the total sum of fund
exceeds 150% of the minimum funds.

*/

create table schoolofit.project_proposal
(
id serial
,project_name varchar(20)
,minimum_fund int
);

insert into schoolofit.project_proposal
(project_name,minimum_fund)
values
('Project-1',10000),
('Project-2',50000),
('Project-3',60000),
('Project-4',70000),
('Project-5',80000),
('Project-6',90000);


select
	*
from
	schoolofit.project_proposal;

create table schoolofit.fund_rising
(
id serial
,project_id int
,investor_id int
,investment_amount int
);



insert into schoolofit.fund_rising
(project_id,investor_id,investment_amount)
values
(1,100,3000),
(1,101,3000),
(1,102,3000),
(1,103,3000),
(1,104,3000),
(2,100,3000),
(2,100,7000),
(2,101,13000),
(2,104,75000),
(2,110,200000),
(6,100,50000),
(6,108,20000),
(6,120,75000),
(6,115,80000);


select
	*
from
	schoolofit.fund_rising;
