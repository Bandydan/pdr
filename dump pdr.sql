-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "category" ---------------------------------
CREATE TABLE `category` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`category_name` VarChar( 255 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 8;
-- ---------------------------------------------------------


-- CREATE TABLE "example_works" ----------------------------
CREATE TABLE `example_works` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`category_id` Int( 11 ) NOT NULL,
	`photo_before` VarChar( 255 ) NOT NULL,
	`photo_after` VarChar( 255 ) NOT NULL,
	`about` Text NOT NULL,
	`additionally` VarChar( 255 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
ENGINE = InnoDB
AUTO_INCREMENT = 8;
-- ---------------------------------------------------------


-- Dump data of "category" ---------------------------------
INSERT INTO `category`(`id`,`category_name`) VALUES ( '1', 'Удаление вмятин' );
INSERT INTO `category`(`id`,`category_name`) VALUES ( '2', 'Полировка авто' );
INSERT INTO `category`(`id`,`category_name`) VALUES ( '3', 'Бронирование фар' );
INSERT INTO `category`(`id`,`category_name`) VALUES ( '4', 'Химчистка салона' );
INSERT INTO `category`(`id`,`category_name`) VALUES ( '5', 'Ремонт лобового стекла' );
INSERT INTO `category`(`id`,`category_name`) VALUES ( '6', 'Антикорозийная обработка' );
INSERT INTO `category`(`id`,`category_name`) VALUES ( '7', 'Покраска авто' );
-- ---------------------------------------------------------


-- Dump data of "example_works" ----------------------------
INSERT INTO `example_works`(`id`,`category_id`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '1', '1', 'a.jpg', 'b.jpg', 'Сделали на совесть', 'Не к чему придраться' );
INSERT INTO `example_works`(`id`,`category_id`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '2', '2', 'a.jpg', 'b.jpg', 'И здесь делали на совесть', 'Не к чему придраться' );
INSERT INTO `example_works`(`id`,`category_id`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '3', '3', 'a.jpg', 'b.jpg', 'И здесь тоже делали на совесть', 'Не к чему придраться' );
INSERT INTO `example_works`(`id`,`category_id`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '4', '4', 'a.jpg', 'b.jpg', 'Здесь даже старались', 'Не к чему придраться' );
INSERT INTO `example_works`(`id`,`category_id`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '5', '5', 'a.jpg', 'b.jpg', 'Здесь ещё и устали', 'Не к чему придраться' );
INSERT INTO `example_works`(`id`,`category_id`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '6', '6', 'a.jpg', 'b.jpg', 'На день работы', 'Не к чему придраться' );
INSERT INTO `example_works`(`id`,`category_id`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '7', '7', 'a.jpg', 'b.jpg', 'На неделю', 'Не к чему придраться' );
-- ---------------------------------------------------------


-- CREATE INDEX "category_id" ------------------------------
CREATE INDEX `category_id` USING BTREE ON `example_works`( `category_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "category_id_2" ----------------------------
CREATE INDEX `category_id_2` USING BTREE ON `example_works`( `category_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "category_id_3" ----------------------------
CREATE INDEX `category_id_3` USING BTREE ON `example_works`( `category_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "category_id_4" ----------------------------
CREATE INDEX `category_id_4` USING BTREE ON `example_works`( `category_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "category_id_5" ----------------------------
CREATE INDEX `category_id_5` USING BTREE ON `example_works`( `category_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "category_id_6" ----------------------------
CREATE INDEX `category_id_6` USING BTREE ON `example_works`( `category_id` );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


