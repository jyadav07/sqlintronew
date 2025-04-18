-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT players.id, sum(stats.hits)
FROM players INNER JOIN stats ON players.id = stats.player_id
WHERE players.first_name = "Barry" AND players.last_name = "Bonds"
GROUP BY players.id;
