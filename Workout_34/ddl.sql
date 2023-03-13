/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------
Write an SQL query to find running total and the revenue of each
Sales id as a percentage of Total revenue
*/

create table schoolofit.sales_metrics
(
sales_id serial,
product varchar(20),
sales_dated_on date,
sales_amount int
);


insert into schoolofit.sales_metrics (product,sales_dated_on,sales_amount)
values
('APPLE',(now() - interval '10 day' ):: DATE,300),
('ORANGE',(now() - interval '9 day' ):: DATE,200),
('CHERRY',(now() - interval '9 day' ):: DATE,250),
('MELONS',(now() - interval '8 day' ):: DATE,600),
('APPLE',(now() - interval '8 day' ):: DATE,320),
('ORANGE',(now() - interval '7 day' ):: DATE,900),
('CHERRY',(now() - interval '7 day' ):: DATE,1200),
('APPLE',(now() - interval '4 day' ):: DATE,1500),
('KIWI',(now() - interval '4 day' ):: DATE,100),
('MELONS',(now() - interval '2 day' ):: DATE,700);

select * from schoolofit.sales_metrics;