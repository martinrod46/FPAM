
CREATE VIEW vw_matches_enriched AS

SELECT match_id,
	   match_date,
	   home_team,
	   away_team,
	   home_goals,
	   away_goals,
	   CASE 
			WHEN home_goals > away_goals THEN 'H'
			WHEN away_goals > home_goals THEN 'A'
			ELSE 'D'
	   END AS result

FROM matches
		
