CREATE DATABASE  IF NOT EXISTS `urban_mining_adventure_1999`;
USE `mining_simulator_9000`;

-- Tables

DROP TABLE IF EXISTS item;
CREATE TABLE item (
	`id` int PRIMARY KEY,
	`name` varchar(20) DEFAULT NULL,
	`type` varchar(20) DEFAULT NULL,
	`amount` int DEFAULT NULL,
	`drop_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS ore;
CREATE TABLE ore (
	`id` int PRIMARY KEY,
	`name` varchar(22) DEFAULT NULL,
	`hardness` int DEFAULT NULL,
	`item_id` int,
	FOREIGN KEY (item_id)
		REFERENCES item(id)
		ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS tool;
CREATE TABLE tool (
	`id` int PRIMARY KEY,
	`name` varchar(20) DEFAULT NULL,
	`hardness` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data

LOCK TABLES item WRITE;
INSERT INTO item VALUES 
	(1,'dirt','junk',5,1),
	(2,'concrete','junk',3,0.9),
	(3,'asphalt','junk',2,0.75),
	(4,'copper','metal',1,0.1),
	(5,'steel','metal',1,0.5);
UNLOCK TABLES;

LOCK TABLES ore WRITE;
INSERT INTO ore VALUES 
	(1,'lawn',1,1),
	(2,'sidewalk',2,2),
	(3,'pothole',3,3),
	(4,'air conditioning unit',1,4),
	(5,'street sign',5,5);
UNLOCK TABLES;

LOCK TABLES tool WRITE;
INSERT INTO tool VALUES 
	(2,'rusty spoon',1),
	(3,'pickaxe',3),
	(4,'brick of c4',5),
	(1,'naked fists',0);
UNLOCK TABLES;
