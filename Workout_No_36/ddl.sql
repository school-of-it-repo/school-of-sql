/*
**********************************
Source from : School of IT
Contact : +91 98403 26240
Mail : mail2schoolofit@gmail.com
**********************************

-----------------
Problem statement:
-----------------
Prepare Point Table based results .
Winners 4 pts , Losers – 0 pts , and Tie -  2 pts

*/

create table schoolofit.match_results(
   team_a varchar(10),
   team_b varchar(10),
   result varchar(10)
);

insert into schoolofit.match_results values('india','bangladesh','india');
insert into schoolofit.match_results values('india','pakistan','pakistan');
insert into schoolofit.match_results values('india','srilanka',null);
insert into schoolofit.match_results values('srilanka','bangladesh','bangladesh');
insert into schoolofit.match_results values('srilanka','pakistan','pakistan');
insert into schoolofit.match_results values('bangladesh','pakistan','pakistan');


commit;