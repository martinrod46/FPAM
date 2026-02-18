
-- Add goal difference 

CREATE VIEW vw_team_matches_stats AS

	SELECT *,
		   goals_for - goals_against AS goal_difference
	
	FROM vw_team_matches;

	