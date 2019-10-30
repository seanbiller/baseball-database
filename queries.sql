USE baseball;
    
SELECT *
FROM   players
       JOIN teams
         ON players.currentteamid = teams.id 
WHERE  teams.mascot = 'Red Sox'; 

SELECT 
firstName, lastName, position, abbreviation, homeRuns
FROM   players
       JOIN teams
         ON players.currentteamid = teams.id 
       JOIN hittingstats 
         ON players.id = hittingstats.playerid 
       JOIN games
         ON hittingstats.gameid = games.id 
WHERE games.startTime LIKE '2019-06-06%'
ORDER  BY hittingstats.homeruns DESC LIMIT  5;

SELECT 
firstName, lastName, position, abbreviation, earnedRuns
FROM   players
       JOIN teams
         ON players.currentteamid = teams.id 
       JOIN pitchingstats 
         ON players.id = pitchingstats.playerid 
       JOIN games
         ON pitchingstats.gameid = games.id 
WHERE games.startTime LIKE '2019-06-06%'
ORDER  BY pitchingstats.earnedRuns DESC LIMIT  5;

SELECT 
firstName, lastName, position, abbreviation, doubles, startTime, homeTeamId, awayTeamId
FROM   players
       JOIN teams
         ON players.currentteamid = teams.id 
       JOIN hittingStats 
         ON players.id = hittingStats.playerid 
       JOIN games
         ON hittingStats.gameid = games.id 
WHERE games.startTime LIKE '2019-06-06%'
ORDER  BY hittingStats.doubles DESC LIMIT  5;
 
    
