# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.36)
# Database: 888yongeandold
# Generation Time: 2017-06-02 04:21:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Concerts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Concerts`;

CREATE TABLE `Concerts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `headliner` tinytext NOT NULL,
  `openers` tinytext,
  `image` text,
  `note` tinytext,
  `link` text,
  `venue_name` text,
  `local_image` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Concerts` WRITE;
/*!40000 ALTER TABLE `Concerts` DISABLE KEYS */;

INSERT INTO `Concerts` (`id`, `date`, `headliner`, `openers`, `image`, `note`, `link`, `venue_name`, `local_image`)
VALUES
	(1,'1966-05-25','Wilson Pickett',NULL,NULL,NULL,NULL,'Club 888',NULL),
	(2,'1966-12-01','The Regents',NULL,'https://strathdee.files.wordpress.com/2016/01/regents66club888.jpg',NULL,NULL,'Club 888',NULL),
	(3,'1967-09-27','Tina Turner',NULL,NULL,NULL,NULL,'Club 888',NULL),
	(4,'1968-09-20','Blood, Sweat & Tears',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(5,'1968-09-21','Blood, Sweat & Tears','Transfusion',NULL,NULL,NULL,'The Rock Pile',NULL),
	(6,'1968-10-05','Procol Harum',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(7,'1969-02-02','Led Zeppelin',NULL,NULL,NULL,'http://www.ledzeppelin.com/node/333/9895','The Rock Pile',NULL),
	(8,'1968-10-27','The Jeff Beck Group',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(9,'1998-06-27','Cibo Matto',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(11,'1968-11-09','Iron Butterfly',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(12,'1969-03-02','John Mayall',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(13,'1969-03-08','Savoy Brown Blues Band',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(14,'1969-03-16','Chuck Berry',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(15,'1969-04-05','John Lee Hooker',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(16,'1969-04-12','The Crazy World of Arthur Brown',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(17,'1969-04-26','Paul Butterfield',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(18,'1969-05-11','Deep Purple',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(19,'1969-05-24','Frank Zappa',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(20,'1969-07-12','McKenna Mendelson Mainline',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(21,'1980-10-17','Split Enz',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(22,'1980-10-18','Split Enz',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(23,'1981-03-12','Iggy Pop',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(24,'1981-06-21','Iron Maiden',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(25,'1982-07-06','Duran Duran',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(26,'1982-10-28','Iggy Pop',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(27,'1984-06-13','Marillion',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(28,'1984-11-12','The Cure',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(29,'1984-12-21','The Parachute Club',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(30,'1987-05-31','Skinny Puppy',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(31,'1988-05-08','Midnight Oil',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(32,'1988-11-06','Skinny Puppy',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(33,'1990-03-30','The Tragically Hip',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(34,'1991-04-14','Happy Mondays',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(35,'1991-07-05','The Tragically Hip',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(36,'1991-09-29','Jesus Jones',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(37,'1991-11-30','The Pixies',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(38,'1992-11-29','Alice In Chains',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(39,'1992-12-21','Body Count',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(40,'1993-01-29','Slik Toxik',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(41,'1993-02-19','Inspiral Carpets',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(42,'1993-03-31','Rage Against the Machine',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(43,'1993-04-13','Midnight Oil',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(44,'1993-04-27','Phish',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(45,'1993-12-06','Green Day',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(46,'1994-05-16','Rollins Band',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(47,'1996-04-03','Foo Fighters',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(48,'1996-06-14','Cocteau Twins',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(49,'1996-07-06','Finn Brothers',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(50,'1996-11-22','James Brown',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(51,'1997-10-01','Paul Weller',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(52,'1969-02-23','Frank Zappa',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(53,'1969-03-23','Spirit',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(54,'1969-03-29','Jethro Tull',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(55,'1969-04-19','Family',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(56,'1969-05-04','Sweetwater',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(57,'1969-05-17','Kensington Market',NULL,NULL,NULL,NULL,'The Rock Pile',NULL),
	(58,'1980-08-21','Magazine',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(59,'1985-05-05','Cabaret Voltaire',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(60,'1991-07-09','EMF',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(61,'1994-11-18','Anvil',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(62,'1996-04-18','Rusty',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(63,'1996-09-20','Sloan',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(64,'1997-04-18','Rusty',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(65,'1985-03-31','Venom/Slayer/Razor',NULL,NULL,NULL,NULL,'The Concert Hall',NULL),
	(66,'1988-04-21','Love and Rockets','The Mighty Lemon Drops & The Bubblemen',NULL,NULL,NULL,'The Concert Hall',NULL),
	(67,'2016-05-06','Luke & The Apostles',NULL,NULL,NULL,NULL,'Info-Tech Research Group',NULL),
	(68,'2016-06-02','Platinum Blonde',NULL,NULL,NULL,NULL,'Info-Tech Research Group',NULL),
	(69,'1997-06-09','The Tragically Hip',NULL,NULL,NULL,'http://www.songkick.com/concerts/865946-tragically-hip-at-concert-hall','The Concert Hall',NULL),
	(70,'1994-04-06','Phish',NULL,NULL,NULL,'http://www.songkick.com/concerts/1814606-phish-at-concert-hall','The Concert Hall',NULL),
	(71,'1992-02-18','Ice-T and his Rhyme $yndicate','Body Count and Hard Corps','https://instagram.fymy1-1.fna.fbcdn.net/t51.2885-15/e35/18723503_1314853008628833_797301953414561792_n.jpg',NULL,'https://www.instagram.com/p/BUsLm8MB874/','The Concert Hall',NULL),
	(72,'1990-05-19','Queen Latifah','Chill Rob G. and HDV',NULL,NULL,'https://www.instagram.com/p/4FPIdNJra7/','The Concert Hall',NULL),
	(73,'1992-05-04','Soundgarden','Swervedriver and Monster Magnet',NULL,NULL,'https://www.instagram.com/p/BUPX4UABnk5/','The Concert Hall',NULL),
	(74,'2006-04-18','Kanye West and Sam Roberts',NULL,'http://media.gettyimages.com/photos/kanye-west-during-mtv-live-at-the-concert-hall-featuring-kanye-west-picture-id107309788',NULL,NULL,'MTV Live At The Concert Hall','images/kanye.jpg'),
	(75,'1997-12-27','Rakim',NULL,NULL,NULL,'https://www.instagram.com/p/BUIZCz_hEar/','The Concert Hall',NULL),
	(76,'1993-10-20','Stone Temple Pilots',NULL,NULL,NULL,'https://www.youtube.com/watch?v=iQAfjCR7L0E','The Concert Hall',NULL);

/*!40000 ALTER TABLE `Concerts` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
