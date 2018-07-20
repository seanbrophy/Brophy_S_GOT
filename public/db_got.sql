-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2017 at 12:59 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_got`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_character`
--

CREATE TABLE IF NOT EXISTS `tbl_character` (
  `character_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `character_name` varchar(50) NOT NULL,
  `character_actor` varchar(50) NOT NULL,
  `character_photo` varchar(50) NOT NULL,
  `character_bio` text NOT NULL,
  `character_house` varchar(50) NOT NULL,
  `character_banner` varchar(50) NOT NULL,
  PRIMARY KEY (`character_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_character`
--

INSERT INTO `tbl_character` (`character_id`, `character_name`, `character_actor`, `character_photo`, `character_bio`, `character_house`, `character_banner`) VALUES
(1, 'Tyrion Lannister', 'Peter Dinklage', 'tyrion.jpg', 'Tyrion Lannister is the youngest son of Joanna Lannister and Lord Tywin Lannister. Tywin is the head of House Lannister, the richest man in the Seven Kingdoms and Lord Paramount of the Westerlands. The Westerlands are one of the constituent regions of the Seven Kingdoms and House Lannister of Casterly Rock is one of the Great Houses of the realm. He is the younger brother of Jaime and Cersei Lannister. His mother Joanna Lannister died giving birth to him. His father and sister hold him in contempt as they blame him for the death.', 'Lannister', 'lannister.png'),
(2, 'Cersei Lannister', 'Lena Headey', 'cersei.jpg', 'Cersei is the only daughter and eldest child of Lord Tywin Lannister and his wife Joanna Lannister, who was also his cousin. Tywin is the head of House Lannister, the richest man in the Seven Kingdoms and Lord Paramount of the Westerlands. The Westerlands are one of the constituent regions of the Seven Kingdoms and House Lannister is one of the Great Houses of the realm. Cersei is the elder twin of Ser Jaime Lannister and the elder sister of Tyrion Lannister. She was raised in privilege in the family seat of Casterly Rock. She is noted for her great beauty.', 'Lannister', 'lannister.png'),
(3, 'Daenerys Targaryen', 'Emilia Clarke', 'daenerys.jpg', 'Daenerys is the only daughter and youngest child of King Aerys II Targaryen, the "Mad King", and his sister-wife, Rhaella. Her father died during the Sack of King''s Landing, before she was even born. The usurper Robert Baratheon installed himself as king, having defeated Aerys in the conquest known as Robert''s Rebellion. Her pregnant mother and brother Viserys, fled to the island of Dragonstone, the ancestral home of House Targaryen, to escape Robert. Daenerys''s brother Rhaegar Targaryen was killed in the war by Robert. The forces of House Lannister murdered Rhaegar''s wife, Elia Martell, and their children, Rhaenys and Aegon, during the Sack of King''s Landing.', 'Targaryen', 'targaryen.png'),
(4, 'Jon Snow', 'Kit Harington', 'jon.jpg', 'Eighteen years before the War of the Five Kings, Rhaegar Targaryen allegedly abducted Lyanna Stark of Winterfell in a scandal that would lead to the outbreak of Robert''s Rebellion. Rhaegar would eventually return to fight in the war, but not before leaving Lyanna behind at the Tower of Joy, guarded by Lord Commander Gerold Hightower and Ser Arthur Dayne of the Kingsguard. Lord Eddard Stark, Lyanna''s brother, rode to war along with her betrothed, Robert Baratheon, to rescue his sister and avenge the deaths of their father and brother on the orders of Rhaegar''s father, Aerys II, the Mad King.', 'Stark', 'stark.png'),
(5, 'Yara Greyjoy', 'Gemma Whelan', 'yara.jpg', 'Yara was born and raised at Pyke. She was Balon and Alannys'' third child after Rodrik and Maron. She also has a younger brother, Theon. Eight years before the start of the series, Balon rose in rebellion against the Iron Throne and was defeated in a bloody war. Balon''s two older sons were killed and Theon was taken by Lord Eddard Stark as a hostage for Balon''s good behavior and obedience. With Yara as Balon''s only remaining child in the Iron Islands, he raised her as a surrogate son, encouraging her to become a reaver in her own right, which is unusual for women in the patriarchal culture of the ironborn. She is a fierce warrior and commands her own longship, to the disquiet of some of the ironborn who hold that women should not fight or command men in battle.', 'Greyjoy', 'greyjoy.png'),
(6, 'Eddard Stark', 'Sean Bean', 'eddard.jpg', 'Eddard was married to Lady Catelyn of House Tully. Though they barely knew one another when they wed, they formed a strong and loving marriage. They have five legitimate children: Robb, Sansa, Arya, Bran and Rickon. Eddard also had an "illegitimate bastard son", Jon Snow, reportedly by a common serving girl named Wylla. Jon''s presence at Winterfell was a source of friction between Eddard and his wife. Nevertheless, Eddard was close to all his children and was well-loved and respected by all of them. He seemed to have a soft spot for his youngest daughter, Arya.', 'Stark', 'stark.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
