--2988
SELECT 
(
    SELECT name 
    FROM teams as A 
    WHERE A.id = team.id
) as name,

(
    SELECT COUNT(team_1) 
    FROM matches 
    WHERE team_1 = team.id
)+(
    SELECT COUNT(team_2) 
    FROM matches 
    WHERE team_2 = team.id
) as matches,

(
    SELECT SUM(CASE WHEN team_2_goals > team_1_goals 
    THEN 1 
    ELSE 0 END) as victories 
    FROM teams as A 
    INNER JOIN matches as B
    ON A.id = B.team_2 
    WHERE A.id = team.id
)+(
    SELECT SUM(CASE WHEN team_1_goals > team_2_goals 
    THEN 1 
    ELSE 0 END) 
    FROM teams as A
    INNER JOIN matches as B
    ON A.id = B.team_1 
    WHERE A.id = team.id
) as victories,


(
    SELECT SUM(CASE WHEN team_2_goals < team_1_goals 
    then 1 ELSE
    0 END) as victories 
    FROM teams as A
    INNER JOIN matches B
    ON A.id = B.team_2 
    WHERE A.id = team.id
)+(
    SELECT SUM(CASE WHEN team_1_goals < team_2_goals 
    THEN 1 ELSE 0 END) 
    FROM teams as A
    INNER JOIN matches as B
    ON A.id = B.team_1 
    WHERE A.id = team.id
) as defeats,

(
    SELECT SUM(CASE WHEN team_2_goals = team_1_goals 
    THEN 1 
    ELSE 0 END) as victories 
    FROM teams as A
    INNER JOIN matches as B
    ON A.id = B.team_2 
    WHERE A.id = team.id
)+(
    SELECT SUM(CASE WHEN team_1_goals = team_2_goals 
    THEN 1 ELSE 0 END) 
    FROM teams as A
    INNER JOIN matches as B
    ON A.id = B.team_1 
    WHERE A.id = team.id
) as draws,


(
    SELECT SUM(CASE WHEN team_2_goals > team_1_goals 
    THEN 3 WHEN team_2_goals = team_1_goals 
    THEN 1 
    ELSE 0 END) as victories 
    FROM teams as A
    INNER JOIN matches as B 
    ON A.id = B.team_2 
    WHERE A.id = team.id
)+(
    SELECT SUM(CASE WHEN team_1_goals > team_2_goals 
    THEN 3 WHEN team_1_goals = team_2_goals 
    THEN 1 
    ELSE 0 END) 
    FROM teams as A
    INNER JOIN matches as B
    ON A.id = B.team_1 
    WHERE A.id = team.id
) as score


FROM teams as team
ORDER BY score DESC