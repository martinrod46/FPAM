
-- Convert match-level to team-level 

CREATE OR ALTER VIEW vw_team_matches AS

SELECT match_id,
	   match_date,
	   home_team AS team,
	   away_team AS opponent,
	   home_goals AS goals_for,
	   away_goals AS goals_against,
	   CASE
		  WHEN home_goals > away_goals THEN 3
		  WHEN home_goals = away_goals THEN 1
		  ELSE 0
	   END AS points
	   


FROM matches

UNION ALL

SELECT match_id,
	   match_date,
	   away_team AS team,
	   home_team AS opponent,
	   away_goals AS goals_for,
	   home_goals AS goals_against,
	   CASE
		  WHEN home_goals > away_goals THEN 3
		  WHEN home_goals = away_goals THEN 1
		  ELSE 0
	   END AS points

FROM matches



