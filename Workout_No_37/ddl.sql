/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------
Write an SQL query to fetch an eMail-id from
emails table which have vowels (i.e., a, e, i, o, and u) as both their first and last characters.


*/

create table schoolofit.emails
( id serial
 ,email_id varchar(50)
 );

insert into schoolofit.emails
(email_id)
values
('anna@gmail.com'),
('joy@gmail.com'),
('francis@gmail.com'),
('mail2schoolifit@gmail.com'),
('iwinrayena@yahoo.co.in'),
('eric@gmail.com'),
('ironeve@gmail.com');

commit;


select
	id
	,email_id
from
	schoolofit.emails;