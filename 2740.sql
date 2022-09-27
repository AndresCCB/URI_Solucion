--2740
(SELECT ('Podium: ' || team) as name 
FROM league 
WHERE position <= 3)
UNION all
(SELECT ('Demoted: ' || team) as name 
FROM league
WHERE position >= 14)