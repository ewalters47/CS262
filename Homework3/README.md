### CS262 Homework 3

Monopoly service is deployed on Heroku based on [Homework 3](https://cs.calvin.edu/courses/cs/262/kvlinden/09is/homework.html)

The endpoints match Lab 9/Homework 3 and are deployed as:

##### Part 1a:

- https://emw45-monopoly-service.herokuapp.com/
- https://emw45-monopoly-service.herokuapp.com/players
- https://emw45-monopoly-service.herokuapp.com/players/1
- https://emw45-monopoly-service.herokuapp.com/players/-1 (not found)
- https://emw45-monopoly-service.herokuapp.com/players/blob (undefined endpoint)
- https://emw45-monopoly-service.herokuapp.com/players/PlayerGame (Homework 3)

##### Part 1b:

/players - nullimpotent
/players/:id, readPlayer - nullimpotent
/players/:id, updatePlayer - idempotent
/players, createPlayer - idempotent
/players/:id, deletePlayer - idempotent

##### Part 1c:

Yes the service is RESTful because it's a client/server architecture, it's stateless, and the code is sent back static forms like JSON.

##### Part 1d:

Unless there is a data type mismatch, it should be okay.
