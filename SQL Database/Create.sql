/* Table Creation */
CREATE TABLE Dog (
    ID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Age INT,
    Breed NVARCHAR(100),
    Gender NVARCHAR(10),
    Color NVARCHAR(100)
) AS NODE;

CREATE TABLE Friends (
    Relationship NVARCHAR(100)
) AS EDGE;


/* Insert Dogs information */
INSERT INTO Dog VALUES 
    (1, 'Saku', 3, 'Poodle', 'Male','Black');
INSERT INTO Dog VALUES 
    (2, 'Toraji',5, 'Toy Manchester Terrier', 'Male', 'Black');
INSERT INTO Dog VALUES 
    (3, 'Mocha',1, 'Poodle', 'Female', 'Red');
INSERT INTO Dog VALUES 
    (4, 'Chiro',10, 'Mix-Marupoo', 'Male', 'White');
INSERT INTO Dog VALUES 
    (5, 'Chimame',7, 'Shiba', 'Female', 'Black');
INSERT INTO Dog VALUES 
    (6, 'Komame',0, 'Shiba', 'Female', 'Black');
INSERT INTO Dog VALUES 
    (7, 'Jesse',0, 'Spanish Greyhound', 'Female', 'Tiger');
INSERT INTO Dog VALUES 
    (8, 'Sora',3, 'Beagle', 'Female', 'Hound Color');
INSERT INTO Dog VALUES 
    (9, 'Suzu',3, 'Shiba', 'Female', 'Red');
INSERT INTO Dog VALUES 
    (10, 'Lakshimi',3, 'Juck Russel Terrier', 'Female', 'White-brown');
INSERT INTO Dog VALUES 
    (11, 'Mocha',6, 'Poodle', 'Female', 'Blue');
INSERT INTO Dog VALUES 
    (12, 'Emma',6, 'Poodle', 'Female', 'Apricot');
INSERT INTO Dog VALUES 
    (13, 'Latte',7, 'Poodle', 'Male', 'Red');
INSERT INTO Dog VALUES 
    (14, 'Ruck',8, 'Papillon', 'Male', 'Black-WHite');




/* Estabrish Relationship */
INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 1),
 (SELECT $node_id FROM Dog WHERE ID = 2),
 'Respect');

INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 3),
 (SELECT $node_id FROM Dog WHERE ID = 4),
 'Siblings');

INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 5),
 (SELECT $node_id FROM Dog WHERE ID = 6),
 'Siblings');

 INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 11),
 (SELECT $node_id FROM Dog WHERE ID = 12),
 'Siblings');

INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 1),
 (SELECT $node_id FROM Dog WHERE ID = 3),
 'Friend');

INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 1),
 (SELECT $node_id FROM Dog WHERE ID = 4),
 'Respect Friend');

INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 1),
 (SELECT $node_id FROM Dog WHERE ID = 5),
 'Acquaintance');

INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 1),
 (SELECT $node_id FROM Dog WHERE ID = 6),
 'Acquaintance');

 INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 1),
 (SELECT $node_id FROM Dog WHERE ID = 7),
 'Friend');

 INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 1),
 (SELECT $node_id FROM Dog WHERE ID = 8),
 'Acquaintance');

INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 1),
 (SELECT $node_id FROM Dog WHERE ID = 9),
 'Acquaintance');

INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 1),
 (SELECT $node_id FROM Dog WHERE ID = 10),
 'Acquaintance');

INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 1),
 (SELECT $node_id FROM Dog WHERE ID = 11),
 'Friend');

INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 1),
 (SELECT $node_id FROM Dog WHERE ID = 12),
 'Friend');

 INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 1),
 (SELECT $node_id FROM Dog WHERE ID = 13),
 'Friend');

INSERT INTO Friends ($from_id, $to_id, Relationship)
VALUES ((SELECT $node_id FROM Dog WHERE ID = 1),
 (SELECT $node_id FROM Dog WHERE ID = 14),
 'Respect');