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

select
	id
	,email_id
from
	schoolofit.emails
where
	(string_to_array(email_id,'@'))[1] ~ '[a|e|i|o|u].*[a|e|i|o|u]$';