SELECT *
FROM   players
       JOIN teams
         ON players.currentteamid = teams.id 
WHERE  teams.mascot = 'Red Sox'; 

Update players
	Set currentTeamId = (Select id From teams Where abbreviation = 'Bos')
where lastName = 'Betts'
and firstName = 'Mookie';

Insert Into players
	(firstName, lastName, position, throws, hits, currentTeamId)
Values
	('Mookie', 'Betts', 'RF', 'R', 'R',
    (Select id From teams Where abbreviation = 'Pit'));
    
SELECT *
FROM   players
       JOIN teams
         ON players.currentteamid = teams.id 
WHERE  teams.abbreviation = 'Pit'; 
