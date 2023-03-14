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

with _cleaned_data as
(
select
	team_a as team,
	result
from
	schoolofit.match_results
union all
select
	team_b,
	result
from
	schoolofit.match_results
)
select
	team
	,count(team) as total_matches
	,sum( case when result = team then 1 else 0 end) as win
	,sum( case when result = '' or result is null then 1 else 0 end) as tie
	,sum( case when result != team and result is not null and result != '' then 1 else 0 end) as lose
	,sum(
		sum( case when result = team then 1 else 0 end) * 4
		+
		sum( case when result = '' or result is null then 1 else 0 end) * 2
	) over (partition by team) as total_points
from
	_cleaned_data
group by 	team order by total_points desc;

