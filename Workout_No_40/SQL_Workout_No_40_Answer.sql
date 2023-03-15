/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------

Data entry operator entered wrong data for gender column.
We need to correct those details. Write an SQL query to replace the Gender Male to Female
And Vice versa.


*/

update schoolofit.gender_change
	set gender = (
					case

					when lower(gender)='male' then 'FEMALE'
					when lower(gender)='female' then 'MALE'
					else upper(gender)
					end
				);
