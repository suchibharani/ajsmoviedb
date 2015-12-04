/*
SQLyog Ultimate v11.5 (64 bit)
MySQL - 5.6.26 : Database - ajsmoviedb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ajsmoviedb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ajsmoviedb`;

/*Table structure for table `ajsmoviedb` */

DROP TABLE IF EXISTS `ajsmoviedb`;

CREATE TABLE `ajsmoviedb` (
  `movieid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `year` year(4) NOT NULL,
  `rated` varchar(50) NOT NULL,
  `released` varchar(50) DEFAULT NULL,
  `runtime` varchar(50) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `director` varchar(50) NOT NULL,
  `writer` varchar(50) NOT NULL,
  `actors` varchar(50) NOT NULL,
  `plot` text NOT NULL,
  `language` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `awards` varchar(50) NOT NULL,
  `poster` longblob NOT NULL,
  `metascore` int(11) NOT NULL,
  `imdbrating` float NOT NULL,
  `imdbVotes` int(11) NOT NULL,
  `imdbid` varchar(50) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `response` varchar(6) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`movieid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `ajsmoviedb` */

insert  into `ajsmoviedb`(`movieid`,`title`,`year`,`rated`,`released`,`runtime`,`genre`,`director`,`writer`,`actors`,`plot`,`language`,`country`,`awards`,`poster`,`metascore`,`imdbrating`,`imdbVotes`,`imdbid`,`type`,`response`,`status`,`created_at`,`updated_at`) values (1,'Jeans',1998,'N/A','24 Apr 1998','175 min','Comedy, Drama, Romance','S. Shankar','S. Shankar','Prashanth, Aishwarya Rai Bachchan, Nasser, Senthil','Vishu and Ramu are a pair of Indian twins living in America with their father, Rajamani. When Madhumita (Aishwarya Rai) and her brother come to America to get medical treatment for their ailing grandmother, Vishu and Ramu end up meeting them at the airport. Vishu falls in love with Madhumita, and the couple has everyone\'s blessing, except for Rajamani, who is estranged from his own twin brother. He only wants his sons to marry twin sisters, so Madhumita pretends to have a twin in order to please him. As Madhumita puts on a charade by creating Vaishnavi, all goes well, until Ramu falls in love with Vaishnavi. Now the truth must come out, before Madhumita has to marry both of Rajamani\'s twin sons.','Tamil','India','3 wins.','http://ia.media-imdb.com/images/M/MV5BMjI5OTk5Mzc4NF5BMl5BanBnXkFtZTcwMzg2ODgzMQ@@._V1_SX300.jpg',0,6.2,2,'tt0151121','movie','True',1,1449205693,1449205693),(2,'Frozen',2013,'PG','27 Nov 2013','102 min','Animation, Adventure, Comedy','Chris Buck, Jennifer Lee','Jennifer Lee (screenplay), Hans Christian Andersen','Kristen Bell, Idina Menzel, Jonathan Groff, Josh G','Anna, a fearless optimist, sets off on an epic journey - teaming up with rugged mountain man Kristoff and his loyal reindeer Sven - to find her sister Elsa, whose icy powers have trapped the kingdom of Arendelle in eternal winter. Encountering Everest-like conditions, mystical trolls and a hilarious snowman named Olaf, Anna and Kristoff battle the elements in a race to save the kingdom. From the outside Anna\'s sister, Elsa looks poised, regal and reserved, but in reality, she lives in fear as she wrestles with a mighty secret-she was born with the power to create ice and snow. It\'s a beautiful ability, but also extremely dangerous. Haunted by the moment her magic nearly killed her younger sister Anna, Elsa has isolated herself, spending every waking minute trying to suppress her growing powers. Her mounting emotions trigger the magic, accidentally setting off an eternal winter that she can\'t stop. She fears she\'s becoming a monster and that no one, not even her sister, can help her.','English, Icelandic','USA','Won 2 Oscars. Another 69 wins & 55 nominations.','http://ia.media-imdb.com/images/M/MV5BMTQ1MjQwMTE5OF5BMl5BanBnXkFtZTgwNjk3MTcyMDE@._V1_SX300.jpg',74,7.6,378,'tt2294629','movie','True',1,1449205806,1449205806),(3,'Twilight',2008,'PG-13','21 Nov 2008','122 min','Drama, Fantasy, Romance','Catherine Hardwicke','Melissa Rosenberg (screenplay), Stephenie Meyer (n','Kristen Stewart, Sarah Clarke, Matt Bushell, Billy','Bella Swan has always been a little bit different. Never one to run with the crowd, Bella never cared about fitting in with the trendy, plastic girls at her Phoenix, Arizona high school. When her mother remarried and Bella chooses to live with her father in the rainy little town of Forks, Washington, she didn\'t expect much of anything to change. But things do change when she meets the mysterious and dazzlingly beautiful Edward Cullen. For Edward is nothing like any boy she\'s ever met. He\'s nothing like anyone she\'s ever met, period. He\'s intelligent and witty, and he seems to see straight into her soul. In no time at all, they are swept up in a passionate and decidedly unorthodox romance - unorthodox because Edward really isn\'t like the other boys. He can run faster than a mountain lion. He can stop a moving car with his bare hands. Oh, and he hasn\'t aged since 1918. Like all vampires, he\'s immortal. That\'s right - vampire. But he doesn\'t have fangs - that\'s just in the movies. And he doesn\'t drink human blood, though Edward and his family are unique among vampires in that lifestyle choice. To Edward, Bella is that thing he has waited 90 years for - a soul mate. But the closer they get, the more Edward must struggle to resist the primal pull of her scent, which could send him into an uncontrollable frenzy. Somehow or other, they will have to manage their unmanageable love. But when unexpected visitors come to town and realize that there is a human among them Edward must fight to save Bella? A modern, visual, and visceral Romeo and Juliet story of the ultimate forbidden love affair - between vampire and mortal.','English','USA','26 wins & 11 nominations.','http://ia.media-imdb.com/images/M/MV5BMTQ2NzUxMTAxN15BMl5BanBnXkFtZTcwMzEyMTIwMg@@._V1_SX300.jpg',56,5.2,333,'tt1099212','movie','True',1,1449221424,1449221424);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
