-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "example_works" ----------------------------
CREATE TABLE `example_works` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`category` VarChar( 255 ) NOT NULL,
	`photo_before` Int( 11 ) NOT NULL,
	`photo_after` Int( 11 ) NOT NULL,
	`about` Text NOT NULL,
	`additionally` VarChar( 255 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 8;
-- ---------------------------------------------------------


-- Dump data of "example_works" ----------------------------
INSERT INTO `example_works`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '1', 'Удаление вмятин', '1', '2', 'Сделали на совесть', 'Не к чему придраться' );
INSERT INTO `example_works`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '2', 'Полировка авто', '5', '3', 'И здесь делали на совесть', 'Не к чему придраться' );
INSERT INTO `example_works`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '3', 'Бронирование фар', '2', '7', 'И здесь тоже делали на совесть', 'Не к чему придраться' );
INSERT INTO `example_works`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '4', 'Химчистка салона', '3', '1', 'Здесь даже старались', 'Не к чему придраться' );
INSERT INTO `example_works`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '5', 'Ремонт лобового стекла', '4', '3', 'Здесь ещё и устали', 'Не к чему придраться' );
INSERT INTO `example_works`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '6', 'Антикорозийная обработка', '5', '2', 'На день работы', 'Не к чему придраться' );
INSERT INTO `example_works`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '7', 'Покраска авто', '3', '4', 'На неделю', 'Не к чему придраться' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


