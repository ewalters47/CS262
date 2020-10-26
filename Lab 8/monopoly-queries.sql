--
-- This SQL script implements sample queries on the Monopoly database.
--
-- @author kvlinden
-- @version Summer, 2015
--

-- Get the number of Game records.
SELECT *
  FROM Game
  ;

-- Get the player records.
SELECT * 
  FROM Player
  ;

-- Get all the users with Calvin email addresses.
SELECT *
  FROM Player
 WHERE emailAddress LIKE '%calvin%'
 ;

-- Get the highest score ever recorded.
  SELECT score
    FROM PlayerGame
ORDER BY score DESC
   LIMIT 1
   ;

-- Get the cross-product of all the tables.
SELECT *
  FROM Player, PlayerGame, Game
  ;

--
-- Added queries for Lab 8
-- Ethan Walters
--

-- Exercise 8.1 -- 

-- Retrieve a list of all the games, ordered by date with the most recent game coming first.
SELECT *
FROM Game
ORDER BY time ASC;

-- Retrieve all the games that occurred in the past week.
SELECT *
FROM Game
WHERE time >= '2020-10-19' AND <= '2020-10-25';

-- Retrieve a list of players who have (non-NULL) names.
SELECT Player.name
FROM Player
WHERE name IS NOT NULL;

-- Retrieve a list of IDs for players who have some game score larger than 2000.
SELECT Player.ID
FROM Player
WHERE score >= 2000;

-- Retrieve a list of players who have GMail accounts.
SELECT Player.emailAddress
WHERE emailAddress LIKE '%gmail%';

-- Exercise 8.2 --

-- Retrieve all “The King”’s game scores in decreasing order.
Select score
FROM Player, PlayerGame
WHERE Player.name = 'The King'
ORDER BY score DESC;

-- Retrieve the name of the winner of the game played on 2006-06-28 13:20:00.
Select *
FROM Game, Player, PlayerGame
WHERE Game.time = '2006-06-28 13:20:00'
AND PlayerGame.GameID = Game.ID
AND PlayerGame.PlayerID = Player.ID
ORDER BY score DESC
LIMIT 1;

-- 8.2 c
-- Selects players with the same name by lesser ID value.

-- 8.2 d
-- Maybe to compare rows in the same table.
