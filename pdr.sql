-- CREATE TABLE "Content" ----------------------------------
CREATE TABLE `Content` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`category` VarChar( 20 ) NOT NULL,
	`content_text` VarChar( 1000 ) NOT NULL,
	`content_created` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	`title` VarChar( 30 ) NOT NULL,
	`meta` VarChar( 255 ) NOT NULL,
	`address` VarChar( 255 ) NOT NULL,
	`status` Int( 1 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 19;
-- ---------------------------------------------------------


-- CREATE TABLE "authorization" ----------------------------
CREATE TABLE `authorization` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`user_id` Int( 11 ) NOT NULL,
	`password` VarChar( 50 ) NOT NULL,
	`user_rights` Int( 1 ) NOT NULL DEFAULT '1',
	`user_enabled` Int( 1 ) NOT NULL DEFAULT '1',
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 61;
-- ---------------------------------------------------------


-- CREATE TABLE "cars_mark" --------------------------------
CREATE TABLE `cars_mark` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`mark` VarChar( 40 ) NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `mark` UNIQUE( `mark` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 84;
-- ---------------------------------------------------------


-- CREATE TABLE "cars_model" -------------------------------
CREATE TABLE `cars_model` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`mark_id` Int( 11 ) NOT NULL,
	`model` VarChar( 40 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1051;
-- ---------------------------------------------------------


-- CREATE TABLE "ci_session" -------------------------------
CREATE TABLE `ci_session` ( 
	`session_id` VarChar( 40 ) NOT NULL DEFAULT '0',
	`ip_address` VarChar( 16 ) NOT NULL DEFAULT '0',
	`user_agent` VarChar( 40 ) NOT NULL,
	`last_activity` Int( 11 ) UNSIGNED NOT NULL DEFAULT '0',
	`user_id` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `session_id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "comments" ---------------------------------
CREATE TABLE `comments` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`user_id` Int( 11 ) NOT NULL,
	`avto_id` Int( 11 ) NULL,
	`comment_created` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	`comment_text` VarChar( 255 ) NOT NULL,
	`examples_id` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 6;
-- ---------------------------------------------------------


-- CREATE TABLE "mediafiles" -------------------------------
CREATE TABLE `mediafiles` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`user_id` Int( 11 ) NULL,
	`media_link` VarChar( 255 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- ---------------------------------------------------------


-- CREATE TABLE "order_for_assessment" ---------------------
CREATE TABLE `order_for_assessment` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`user_id` Int( 11 ) NOT NULL,
	`avto_id` Int( 11 ) NOT NULL,
	`photo_id` Int( 11 ) NOT NULL,
	`order_text` VarChar( 255 ) NOT NULL,
	`order_created` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- ---------------------------------------------------------


-- CREATE TABLE "order_in_shop" ----------------------------
CREATE TABLE `order_in_shop` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "statistics" -------------------------------
CREATE TABLE `statistics` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "users" ------------------------------------
CREATE TABLE `users` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`login` VarChar( 30 ) NOT NULL,
	`name` VarChar( 30 ) NOT NULL,
	`surname` VarChar( 30 ) NULL,
	`email` VarChar( 20 ) NOT NULL,
	`tel` VarChar( 13 ) NOT NULL,
	`birthsday` Date NULL,
	`sex` Char( 10 ) NULL,
	`avto_id` Int( 11 ) NULL,
	`car_year` Int( 4 ) NULL,
	`user_created` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	`avatar` VarChar( 30 ) NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 73;
-- ---------------------------------------------------------


-- CREATE TABLE "example_works_english" --------------------
CREATE TABLE `example_works_english` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`category` VarChar( 10 ) NOT NULL,
	`photo_before` Int( 11 ) NOT NULL,
	`photo_after` Int( 11 ) NOT NULL,
	`about` Text NOT NULL,
	`additionally` VarChar( 255 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 14;
-- ---------------------------------------------------------


-- CREATE TABLE "example_works_russian" --------------------
CREATE TABLE `example_works_russian` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`category` VarChar( 10 ) NOT NULL,
	`photo_before` Int( 11 ) NOT NULL,
	`photo_after` Int( 11 ) NOT NULL,
	`about` Text NOT NULL,
	`additionally` VarChar( 255 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 12;
-- ---------------------------------------------------------


-- CREATE TABLE "example_works_ukrainian" ------------------
CREATE TABLE `example_works_ukrainian` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`category` VarChar( 10 ) NOT NULL,
	`photo_before` Int( 11 ) NOT NULL,
	`photo_after` Int( 11 ) NOT NULL,
	`about` Text NOT NULL,
	`additionally` VarChar( 255 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
COLLATE = utf8_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 23;
-- ---------------------------------------------------------


-- Dump data of "Content" ----------------------------------
INSERT INTO `Content`(`id`,`category`,`content_text`,`content_created`,`title`,`meta`,`address`,`status`) VALUES ( '15', 'Примеры работ', '<p><img alt="" src="/assets/js/kcfinder/upload/images/DSCN3177.JPG" style="height:300px; width:400px" />Везите катер, с ним тоже справимся</p>
', '2016-03-06 15:20:29', 'Статья 1', 'вавап вапвап вапвп ', 'http://pdr/examples/  rtyryddf', '1' );
INSERT INTO `Content`(`id`,`category`,`content_text`,`content_created`,`title`,`meta`,`address`,`status`) VALUES ( '17', 'Примеры работ', '<p>уцкеуцейукекеуке</p>
', '2016-03-31 23:23:39', 'Статья 22', 'yuiyuiyui yuiy', 'http://pdr/examples/rsthsrh/guiuy', '1' );
INSERT INTO `Content`(`id`,`category`,`content_text`,`content_created`,`title`,`meta`,`address`,`status`) VALUES ( '18', 'Инструмент', '<p>вапвап дождодлжо вапвап&nbsp;</p>
', '2016-03-06 14:55:26', 'Статья 32a', 'ролролрл', 'http://pdr/education/http://pdr/educations', '1' );
-- ---------------------------------------------------------


-- Dump data of "authorization" ----------------------------
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '15', '20', 'e10adc3949ba59abbe56e057f20f883e', '2', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '16', '27', 'd41d8cd98f00b204e9800998ecf8427e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '17', '28', 'd41d8cd98f00b204e9800998ecf8427e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '18', '29', 'd41d8cd98f00b204e9800998ecf8427e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '19', '30', 'd41d8cd98f00b204e9800998ecf8427e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '20', '31', 'd41d8cd98f00b204e9800998ecf8427e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '21', '32', 'd41d8cd98f00b204e9800998ecf8427e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '22', '33', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '25', '36', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '26', '38', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '27', '39', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '28', '40', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '29', '41', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '30', '42', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '31', '43', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '32', '44', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '33', '45', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '34', '46', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '35', '47', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '36', '48', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '37', '49', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '38', '50', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '39', '51', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '40', '52', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '41', '53', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '42', '54', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '43', '55', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '44', '56', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '45', '57', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '46', '58', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '47', '59', 'e10adc3949ba59abbe56e057f20f883e', '2', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '48', '60', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '49', '61', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '50', '62', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '51', '63', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '52', '64', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '53', '65', 'e10adc3949ba59abbe56e057f20f883e', '2', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '54', '66', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '55', '67', 'e10adc3949ba59abbe56e057f20f883e', '2', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '56', '68', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '57', '69', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '58', '70', 'e10adc3949ba59abbe56e057f20f883e', '1', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '59', '71', 'e10adc3949ba59abbe56e057f20f883e', '2', '1' );
INSERT INTO `authorization`(`id`,`user_id`,`password`,`user_rights`,`user_enabled`) VALUES ( '60', '72', '3b9f7042bffa1a21a4c2cfd40473b3d6', '2', '1' );
-- ---------------------------------------------------------


-- Dump data of "cars_mark" --------------------------------
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '41', 'Acura' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '44', 'Alfa Romeo' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '73', 'Aptera' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '65', 'Aston Martin' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '36', 'Audi' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '8', 'Austin' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '66', 'Bentley' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '7', 'BMW' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '75', 'Bugatti' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '13', 'Buick' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '6', 'Cadillac' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '5', 'Chevrolet' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '2', 'Chrysler' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '3', 'Citroën' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '58', 'Corbin' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '59', 'Daewoo' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '45', 'Daihatsu' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '21', 'Dodge' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '43', 'Eagle' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '10', 'Fairthorpe' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '69', 'Ferrari' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '78', 'FIAT' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '9', 'Fillmore' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '72', 'Foose' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '1', 'Ford' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '46', 'Geo' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '47', 'GMC' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '4', 'Hillman' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '57', 'Holden' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '27', 'Honda' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '55', 'HUMMER' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '48', 'Hyundai' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '49', 'Infiniti' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '50', 'Isuzu' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '51', 'Jaguar' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '52', 'Jeep' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '17', 'Jensen' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '56', 'Kia' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '38', 'Lamborghini' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '40', 'Land Rover' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '42', 'Lexus' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '33', 'Lincoln' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '32', 'Lotus' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '34', 'Maserati' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '61', 'Maybach' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '29', 'Mazda' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '79', 'McLaren' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '24', 'Mercedes-Benz' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '19', 'Mercury' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '39', 'Merkur' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '25', 'MG' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '60', 'MINI' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '30', 'Mitsubishi' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '70', 'Morgan' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '26', 'Nissan' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '18', 'Oldsmobile' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '67', 'Panoz' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '71', 'Peugeot' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '15', 'Plymouth' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '12', 'Pontiac' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '22', 'Porsche' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '77', 'Ram' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '14', 'Rambler' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '28', 'Renault' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '68', 'Rolls-Royce' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '35', 'Saab' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '53', 'Saturn' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '63', 'Scion' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '20', 'Shelby' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '74', 'Smart' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '62', 'Spyker' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '64', 'Spyker Cars' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '11', 'Studebaker' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '31', 'Subaru' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '37', 'Suzuki' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '81', 'Tesla' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '23', 'Toyota' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '16', 'Volkswagen' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '54', 'Volvo' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '83', 'Zaz' );
INSERT INTO `cars_mark`(`id`,`mark`) VALUES ( '82', 'ВАЗ' );
-- ---------------------------------------------------------


-- Dump data of "cars_model" -------------------------------
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1', '1', 'Model T' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '2', '2', 'Imperial' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '3', '3', '2CV' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '4', '4', 'Minx Magnificent' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '5', '5', 'Corvette' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '6', '6', 'Fleetwood' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '7', '1', 'Thunderbird' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '8', '7', '600' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '9', '8', 'Mini' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '10', '5', 'Corvair' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '11', '9', 'Fillmore' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '12', '10', 'Rockette' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '13', '8', 'Mini Cooper' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '14', '11', 'Avanti' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '15', '12', 'Tempest' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '16', '12', 'Grand Prix' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '17', '13', 'Special' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '18', '8', 'Mini Cooper S' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '19', '14', 'Classic' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '20', '1', 'E-Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '21', '5', 'Corvair 500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '22', '1', 'Mustang' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '23', '1', 'Galaxie' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '24', '12', 'GTO' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '25', '12', 'LeMans' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '26', '12', 'Bonneville' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '27', '15', 'Fury' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '28', '1', 'Fairlane' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '29', '16', 'Beetle' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '30', '1', 'Falcon' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '31', '17', 'Interceptor' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '32', '18', 'Toronado' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '33', '12', 'Firebird' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '34', '5', 'Camaro' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '35', '5', 'Bel Air' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '36', '1', 'Country' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '37', '19', 'Cougar' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '38', '20', 'GT500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '39', '21', 'Charger' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '40', '20', 'GT350' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '41', '15', 'Roadrunner' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '42', '1', 'Torino' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '43', '22', '914' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '44', '5', 'Vega' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '45', '3', 'SM' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '46', '5', 'Monte Carlo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '47', '3', 'CX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '48', '5', 'Monza' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '49', '16', 'Golf' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '50', '23', 'Celica' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '51', '15', 'Volare' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '52', '21', 'Aspen' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '53', '5', 'Caprice' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '54', '24', 'W123' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '55', '25', 'MGB' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '56', '15', 'Horizon' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '57', '21', 'Omni' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '58', '26', '280ZX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '59', '5', 'LUV' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '60', '13', 'Riviera' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '61', '5', 'Citation' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '62', '27', 'Civic' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '63', '15', 'Reliant' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '64', '21', 'Aries' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '65', '24', 'W126' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '66', '12', '6000' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '67', '12', 'Sunbird' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '68', '27', 'Accord' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '69', '28', 'Alliance' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '70', '29', '626' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '71', '29', 'RX-7' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '72', '22', '944' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '73', '12', '1000' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '74', '12', 'Parisienne' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '75', '12', 'Fiero' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '76', '12', 'Firefly' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '77', '1', 'Bronco II' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '78', '1', 'Laser' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '79', '1', 'EXP' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '80', '1', 'Ranger' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '81', '1', 'Escort' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '82', '1', 'Tempo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '83', '1', 'LTD' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '84', '1', 'F250' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '85', '1', 'F150' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '86', '1', 'E250' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '87', '1', 'LTD Crown Victoria' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '88', '1', 'Bronco' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '89', '1', 'E150' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '90', '30', 'Space' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '91', '30', 'Galant' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '92', '30', 'Mirage' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '93', '30', 'Starion' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '94', '30', 'Pajero' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '95', '30', 'Cordia' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '96', '30', 'Tredia' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '97', '31', 'Brat' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '98', '24', 'S-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '99', '24', 'E-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '100', '24', 'W201' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '101', '24', 'SL-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '102', '19', 'Topaz' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '103', '19', 'Grand Marquis' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '104', '19', 'Lynx' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '105', '19', 'Capri' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '106', '19', 'Marquis' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '107', '32', 'Esprit Turbo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '108', '16', 'Jetta' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '109', '16', 'Vanagon' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '110', '16', 'Scirocco' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '111', '16', 'Quantum' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '112', '13', 'Electra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '113', '13', 'Century' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '114', '13', 'Skyhawk' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '115', '33', 'Town Car' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '116', '33', 'Continental' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '117', '33', 'Mark VII' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '118', '34', 'Quattroporte' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '119', '34', 'Biturbo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '120', '35', '900' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '121', '36', '5000S' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '122', '27', 'CR-X' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '123', '27', 'Prelude' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '124', '21', 'Daytona' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '125', '37', 'SJ 410' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '126', '29', 'GLC' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '127', '13', 'Somerset' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '128', '13', 'LeSabre' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '129', '13', 'Regal' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '130', '13', 'Skylark' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '131', '1', 'F-Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '132', '30', 'Truck' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '133', '30', 'Chariot' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '134', '16', 'GTI' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '135', '16', 'Cabriolet' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '136', '16', 'Passat' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '137', '16', 'Type 2' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '138', '36', '4000s' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '139', '36', 'Quattro' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '140', '36', 'Coupe GT' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '141', '38', 'Countach' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '142', '29', 'Familia' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '143', '29', 'B2000' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '144', '12', 'Grand Am' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '145', '31', 'XT' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '146', '31', 'Leone' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '147', '39', 'XR4Ti' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '148', '33', 'Continental Mark VII' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '149', '15', 'Voyager' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '150', '22', '911' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '151', '22', '928' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '152', '37', 'Cultus' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '153', '37', 'SJ' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '154', '23', 'MR2' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '155', '32', 'Esprit' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '156', '21', 'Caravan' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '157', '1', 'Taurus' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '158', '1', 'Aerostar' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '159', '1', 'Courier' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '160', '30', 'Mighty Max' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '161', '30', 'Precis' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '162', '12', 'Safari' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '163', '12', 'Gemini' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '164', '12', 'Firebird Trans Am' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '165', '36', '5000CS Quattro' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '166', '36', '4000s Quattro' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '167', '36', '4000CS Quattro' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '168', '19', 'Sable' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '169', '29', 'B-Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '170', '35', '9000' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '171', '40', 'Range Rover' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '172', '36', '4000' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '173', '36', '5000CS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '174', '29', '929' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '175', '29', 'B2600' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '176', '16', 'Fox' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '177', '37', 'Swift' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '178', '31', 'Justy' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '179', '22', '924 S' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '180', '12', 'Chevette' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '181', '30', 'Excel' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '182', '30', 'L300' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '183', '41', 'Legend' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '184', '41', 'Integra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '185', '22', '924' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '186', '12', 'Turbo Firefly' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '187', '19', 'Tracer' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '188', '13', 'Reatta' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '189', '1', 'Festiva' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '190', '29', 'MX-6' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '191', '36', '90' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '192', '36', '80/90' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '193', '13', 'Estate' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '194', '1', 'Probe' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '195', '29', 'MPV' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '196', '30', 'Sigma' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '197', '30', 'Eclipse' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '198', '31', 'Legacy' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '199', '37', 'Sidekick' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '200', '42', 'LS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '201', '42', 'ES' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '202', '34', '228' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '203', '34', '430' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '204', '34', 'Spyder' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '205', '34', 'Karif' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '206', '36', '80' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '207', '36', '100' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '208', '36', '200' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '209', '23', 'Truck Xtracab SR5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '210', '7', '6 Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '211', '21', 'Colt' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '212', '15', 'Laser' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '213', '13', 'Coachbuilder' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '214', '31', 'Loyale' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '215', '29', 'MX-5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '216', '12', 'Trans Sport' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '217', '12', 'Grand Prix Turbo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '218', '36', 'V8' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '220', '32', 'Elan' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '221', '16', 'Corrado' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '222', '30', 'GTO' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '223', '26', 'Maxima' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '224', '26', 'Datsun/Nissan Z-car' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '225', '38', 'Diablo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '226', '43', 'Talon' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '227', '1', 'Explorer' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '228', '13', 'Park Avenue' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '229', '13', 'Roadmaster' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '230', '29', 'Navajo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '231', '26', '300ZX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '232', '26', 'Sentra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '233', '40', 'Sterling' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '234', '23', 'Previa' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '235', '16', 'Eurovan' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '236', '16', 'riolet' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '237', '1', 'Crown Victoria' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '238', '1', 'Club Wagon' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '239', '1', 'Econoline E150' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '240', '1', 'Econoline E250' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '241', '1', 'Econoline E350' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '242', '1', 'F350' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '243', '37', 'Samurai' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '244', '24', '190E' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '245', '24', '300CE' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '246', '24', '300D' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '247', '24', '300E' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '248', '24', '300SD' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '249', '24', '300SE' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '250', '24', '300SL' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '251', '24', '300TE' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '252', '24', '400E' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '253', '24', '400SE' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '254', '24', '500E' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '255', '24', '500SEL' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '256', '24', '500SL' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '257', '24', '600SEL' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '258', '31', 'Alcyone SVX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '259', '31', 'SVX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '260', '30', 'Diamante' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '261', '30', 'RVR' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '262', '30', '3000GT' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '263', '30', 'Expo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '264', '30', 'Mighty Max Macro' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '265', '30', 'Montero' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '266', '29', '323' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '267', '29', 'Protege' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '268', '29', 'MX-3' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '269', '29', 'B-Series Plus' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '270', '29', 'Miata MX-5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '271', '36', 'S4' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '272', '7', '3 Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '273', '7', '5 Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '274', '7', '7 Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '275', '7', '8 Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '276', '7', 'M5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '277', '12', 'Firebird Formula' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '278', '40', 'Defender' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '279', '42', 'SC' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '280', '21', 'Viper' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '281', '21', 'D150 Club' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '282', '21', 'D150' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '283', '21', 'D250 Club' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '284', '21', 'D250' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '285', '21', 'D350 Club' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '286', '21', 'D350' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '287', '21', 'Dakota Club' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '288', '21', 'Dakota' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '289', '21', 'Dynasty' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '290', '21', 'Grand Caravan' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '291', '21', 'Monaco' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '292', '21', 'Ram 50' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '293', '21', 'Ram Van B150' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '294', '21', 'Ram Van B250' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '295', '21', 'Ram Van B350' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '296', '21', 'Ram Wagon B150' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '297', '21', 'Ram Wagon B250' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '298', '21', 'Ram Wagon B350' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '299', '21', 'Ramcharger' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '300', '21', 'Shadow' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '301', '21', 'Spirit' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '302', '21', 'Stealth' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '303', '22', '968' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '304', '6', 'Seville' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '305', '6', 'Allante' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '306', '6', 'Brougham' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '307', '6', 'DeVille' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '308', '6', 'Eldorado' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '309', '23', 'Camry' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '310', '23', '4Runner' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '311', '23', 'Corolla' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '312', '23', 'Cressida' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '313', '23', 'Land Cruiser' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '314', '23', 'Paseo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '315', '23', 'Supra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '316', '23', 'Tercel' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '317', '23', 'Xtra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '318', '26', '240SX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '319', '26', 'NX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '320', '26', 'Pathfinder' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '321', '26', 'Stanza' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '322', '15', 'Acclaim' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '323', '15', 'Colt' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '324', '15', 'Colt Vista' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '325', '15', 'Grand Voyager' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '326', '15', 'Sundance' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '327', '43', 'Premier' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '328', '43', 'Summit' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '329', '41', 'NSX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '330', '41', 'Vigor' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '331', '44', '164' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '332', '44', 'Spider' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '333', '5', '1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '334', '5', '2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '335', '5', '3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '336', '5', 'APV' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '337', '5', 'Astro' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '338', '5', 'Beretta' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '339', '5', 'Blazer' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '340', '5', 'Cavalier' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '341', '5', 'Corsica' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '342', '5', 'G-Series G10' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '343', '5', 'G-Series G20' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '344', '5', 'G-Series G30' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '345', '5', 'Lumina' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '346', '5', 'Lumina APV' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '347', '5', 'S10 Blazer' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '348', '5', 'S10' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '349', '5', 'Sportvan G10' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '350', '5', 'Sportvan G20' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '351', '5', 'Sportvan G30' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '352', '5', 'Suburban 1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '353', '5', 'Suburban 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '354', '2', 'Fifth Ave' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '355', '2', 'LeBaron' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '356', '2', 'New Yorker' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '357', '2', 'Town & Country' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '358', '45', 'Charade' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '359', '45', 'Rocky' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '360', '46', 'Metro' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '361', '46', 'Prizm' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '362', '46', 'Storm' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '363', '46', 'Tracker' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '364', '47', '1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '365', '47', '2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '366', '47', '3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '367', '47', '1500 Club Coupe' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '368', '47', '2500 Club Coupe' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '369', '47', '3500 Club Coupe' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '370', '47', 'Jimmy' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '371', '47', 'Rally Wagon 1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '372', '47', 'Rally Wagon 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '373', '47', 'Rally Wagon 3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '374', '47', 'Safari' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '375', '47', 'Sonoma Club' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '376', '47', 'Sonoma' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '377', '47', 'Suburban 1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '378', '47', 'Suburban 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '379', '47', 'Vandura 1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '380', '47', 'Vandura 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '381', '47', 'Vandura 3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '382', '47', 'Yukon' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '383', '48', 'Elantra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '384', '48', 'Excel' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '385', '48', 'Scoupe' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '386', '48', 'Sonata' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '387', '49', 'G' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '388', '49', 'M' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '389', '49', 'Q' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '390', '50', 'Amigo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '391', '50', 'Impulse' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '392', '50', 'Rodeo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '393', '50', 'Space' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '394', '50', 'Stylus' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '395', '50', 'Trooper' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '396', '51', 'XJ Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '397', '52', 'Cherokee' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '398', '52', 'Comanche' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '399', '52', 'Wrangler' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '401', '18', '98' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '402', '18', 'Achieva' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '403', '18', 'Bravada' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '404', '18', 'Ciera' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '405', '18', 'Custom Cruiser' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '406', '18', 'Cutlass Supreme' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '407', '18', 'Silhouette' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '408', '53', 'S-Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '409', '54', '240' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '410', '54', '740' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '411', '54', '940' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '412', '54', '960' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '413', '31', 'Impreza' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '414', '19', 'Villager' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '415', '24', 'C-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '416', '24', '400SEL' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '417', '24', '500SEC' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '418', '24', '600SEC' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '419', '24', '600SL' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '420', '21', 'Viper RT/10' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '421', '21', 'Intrepid' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '422', '16', 'Golf III' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '423', '16', 'Jetta III' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '424', '40', 'Range Rover Classic' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '425', '40', 'Defender 110' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '426', '26', 'Altima' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '427', '26', 'Quest' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '428', '33', 'Mark VIII' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '429', '42', 'GS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '430', '2', 'Concorde' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '431', '27', 'del Sol' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '432', '23', 'T100' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '433', '52', 'Grand Cherokee' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '434', '6', 'Sixty Special' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '435', '5', 'Caprice Classic' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '436', '43', 'Vision' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '437', '47', 'Sonoma Club Coupe' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '438', '55', 'H1' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '439', '49', 'J' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '440', '18', 'Cutlass Cruiser' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '441', '54', '850' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '442', '1', 'Lightning' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '443', '1', 'Aspire' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '444', '56', 'Sephia' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '445', '21', 'Ram' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '446', '21', 'Ram 1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '447', '21', 'Ram 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '448', '21', 'Ram 3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '449', '5', 'Impala SS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '450', '5', 'Impala' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '452', '36', 'riolet' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '453', '40', 'Discovery' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '454', '40', 'Defender 90' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '455', '27', 'Passport' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '456', '2', 'LHS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '457', '56', 'Sportage' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '458', '12', 'Sunfire' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '459', '1', 'Windstar' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '460', '1', 'Contour' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '461', '16', 'rio' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '462', '19', 'Mystique' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '463', '37', 'Esteem' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '464', '29', 'Millenia' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '465', '36', 'S6' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '466', '36', 'A6' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '467', '41', 'TL' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '468', '7', 'M3' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '469', '21', 'Avenger' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '470', '21', 'Neon' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '471', '21', 'Ram 1500 Club' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '472', '21', 'Ram 2500 Club' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '473', '21', 'Ram 3500 Club' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '474', '21', 'Ram Van 1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '475', '21', 'Ram Van 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '476', '21', 'Ram Van 3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '477', '21', 'Stratus' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '478', '26', '200SX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '479', '5', 'K5 Blazer' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '480', '5', 'Tahoe' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '481', '27', 'Odyssey' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '482', '2', 'Cirrus' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '483', '2', 'Sebring' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '484', '57', 'VS Commodore' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '485', '47', 'Rally Wagon G2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '486', '47', 'Rally Wagon G3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '487', '47', 'Vandura G1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '488', '47', 'Vandura G2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '489', '47', 'Vandura G3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '490', '48', 'Accent' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '491', '18', 'Aurora' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '492', '15', 'Neon' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '493', '23', 'Avalon' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '494', '23', 'T100 Xtra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '495', '23', 'Tacoma' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '496', '23', 'Tacoma Xtra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '497', '13', 'Hearse' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '498', '36', 'A4' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '499', '30', 'Expo LRV' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '500', '37', 'X-90' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '501', '15', 'Breeze' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '502', '5', 'Express 1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '503', '5', 'Express 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '504', '5', 'Express 3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '505', '5', 'G-Series 1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '506', '5', 'G-Series 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '507', '42', 'LX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '508', '7', 'Z3' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '509', '41', 'RL' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '510', '41', 'SLX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '511', '47', 'Savana 1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '512', '47', 'Savana 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '513', '47', 'Savana 3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '514', '49', 'I' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '515', '50', 'Hombre' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '516', '50', 'Oasis' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '517', '23', 'RAV4' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '518', '56', 'Mentor' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '519', '19', 'Mountaineer' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '520', '27', 'CR-V' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '521', '36', 'A8' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '522', '30', 'Challenger' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '523', '30', 'Montero Sport' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '524', '22', 'Boxster' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '525', '24', 'SLK-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '526', '1', 'Expedition' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '527', '5', 'Malibu' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '528', '5', 'G-Series 3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '529', '5', 'Venture' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '530', '15', 'Prowler' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '531', '41', 'CL' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '532', '6', 'Catera' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '533', '48', 'Tiburon' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '534', '49', 'QX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '535', '50', 'Hombre Space' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '536', '51', 'XK Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '537', '18', 'Cutlass' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '538', '18', 'LSS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '539', '18', 'Regency' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '540', '54', 'S90' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '541', '54', 'V90' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '542', '5', 'Metro' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '543', '5', 'Prizm' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '544', '5', 'Tracker' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '545', '31', 'Forester' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '546', '16', 'New Beetle' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '547', '33', 'Navigator' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '548', '24', 'M-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '549', '24', 'CL-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '550', '24', 'CLK-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '551', '21', 'Durango' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '552', '47', 'Envoy' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '553', '26', 'Frontier' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '554', '18', 'Intrigue' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '555', '23', 'Sienna' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '556', '54', 'C70' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '557', '54', 'S70' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '558', '54', 'V70' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '559', '5', 'Silverado' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '560', '5', 'Silverado 1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '561', '5', 'Silverado 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '562', '12', 'Montana' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '563', '37', 'Vitara' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '564', '37', 'Grand Vitara' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '565', '40', 'Discovery Series II' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '566', '35', '9-3' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '567', '35', '9-5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '568', '42', 'RX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '569', '47', 'EV1' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '570', '47', 'Sierra 1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '571', '47', 'Sierra 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '572', '2', '300M' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '573', '58', 'Sparrow' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '574', '6', 'Escalade' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '575', '2', '300' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '576', '59', 'Lanos' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '577', '59', 'Leganza' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '578', '59', 'Nubira' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '579', '50', 'VehiCROSS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '580', '18', 'Alero' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '581', '23', 'Solara' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '582', '54', 'S80' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '583', '31', 'Outback' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '584', '27', 'Insight' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '585', '27', 'S2000' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '586', '7', 'X5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '587', '7', 'M' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '588', '7', 'Z8' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '589', '56', 'Spectra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '590', '33', 'LS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '591', '1', 'Th!nk' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '592', '1', 'Explorer Sport Trac' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '593', '1', 'Escape' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '594', '1', 'Excursion' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '595', '1', 'Explorer Sport' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '596', '1', 'Focus' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '597', '36', 'TT' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '598', '23', 'Tundra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '599', '23', 'Ipsum' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '600', '23', 'Echo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '601', '26', 'Xterra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '602', '2', 'Grand Voyager' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '603', '2', 'Voyager' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '604', '47', 'Sierra 3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '605', '47', 'Yukon Denali' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '606', '47', 'Yukon XL 1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '607', '47', 'Yukon XL 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '608', '51', 'S-Type' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '609', '53', 'L-Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '610', '54', 'S40' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '611', '54', 'V40' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '612', '1', 'Fiesta' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '613', '1', 'ZX2' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '614', '37', 'XL-7' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '615', '29', 'B2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '616', '29', 'Tribute' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '617', '36', 'S8' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '618', '36', 'Allroad' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '619', '12', 'Aztek' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '620', '30', 'Lancer' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '621', '42', 'IS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '622', '40', 'Freelander' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '623', '7', '525' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '624', '7', '530' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '625', '23', 'Highlander' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '626', '23', 'Prius' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '627', '23', 'Sequoia' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '628', '56', 'Rio' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '629', '56', 'Optima' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '630', '5', 'Silverado 3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '631', '41', 'MDX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '632', '2', 'PT Cruiser' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '633', '2', 'Prowler' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '634', '48', 'Santa Fe' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '635', '48', 'XG300' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '636', '50', 'Rodeo Sport' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '637', '54', 'S60' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '638', '37', 'Aerio' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '639', '24', 'G-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '640', '31', 'Outback Sport' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '641', '27', 'Pilot' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '642', '29', 'Protege5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '643', '30', 'Lancer Evolution' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '644', '38', 'Murciélago' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '645', '13', 'Rendezvous' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '646', '7', '745' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '647', '33', 'Blackwood' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '648', '56', 'Sedona' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '649', '47', 'Envoy XL' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '650', '5', 'Avalanche' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '651', '5', 'Trailblazer' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '652', '5', 'Avalanche 1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '653', '5', 'Avalanche 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '654', '60', 'MINI' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '655', '60', 'Cooper' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '656', '41', 'RSX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '657', '6', 'Escalade EXT' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '658', '48', 'XG350' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '659', '50', 'Axiom' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '660', '51', 'X-Type' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '661', '52', 'Liberty' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '662', '53', 'VUE' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '663', '19', 'Marauder' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '664', '7', '760' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '665', '7', 'Z4' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '666', '1', 'Escort ZX2' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '667', '1', 'Freestar' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '668', '1', 'E350' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '669', '42', 'GX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '670', '27', 'Element' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '671', '27', 'Civic Si' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '672', '27', 'Civic GX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '673', '22', 'Cayenne' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '674', '30', 'Outlander' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '675', '31', 'Baja' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '676', '12', 'Vibe' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '677', '36', 'RS6' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '678', '36', 'RS 6' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '679', '29', 'Mazda6' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '680', '16', 'Touareg' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '681', '56', 'Sorento' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '682', '38', 'Gallardo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '683', '33', 'Aviator' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '684', '61', '57' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '685', '61', '62' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '686', '54', 'XC90' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '687', '54', 'XC70' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '688', '5', 'SSR' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '689', '49', 'G35' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '690', '49', 'FX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '691', '26', '350Z' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '692', '26', 'Murano' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '693', '6', 'CTS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '694', '6', 'Escalade ESV' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '695', '55', 'H2' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '696', '50', 'Ascender' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '697', '53', 'Ion' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '698', '23', 'Matrix' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '699', '30', 'Endeavor' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '700', '32', 'Exige' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '701', '32', 'Elise' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '702', '22', 'Carrera GT' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '703', '29', 'Mazda3' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '704', '29', 'RX-8' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '705', '56', 'Amanti' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '706', '7', '325' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '707', '7', '545' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '708', '7', '645' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '709', '7', 'X3' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '710', '13', 'Rainier' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '711', '57', 'Monaro' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '712', '19', 'Monterey' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '713', '62', 'C8 Spyder' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '714', '62', 'C8 Spyder Wide Body' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '715', '62', 'C8 Laviolette' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '716', '37', 'Daewoo Lacetti' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '717', '37', 'Daewoo Magnus' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '718', '37', 'Forenza' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '719', '37', 'Verona' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '720', '16', 'R32' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '721', '16', 'Phaeton' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '722', '5', 'Aveo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '723', '5', 'Classic' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '724', '5', 'Colorado' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '725', '63', 'xA' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '726', '63', 'xB' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '727', '6', 'SRX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '728', '6', 'XLR' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '729', '26', 'Titan' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '730', '26', 'Pathfinder Armada' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '731', '41', 'TSX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '732', '2', 'Crossfire' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '733', '2', 'Pacifica' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '734', '47', 'Canyon' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '735', '47', 'Envoy XUV' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '736', '63', 'tC' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '737', '12', 'G6' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '738', '12', 'Daewoo Kalos' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '739', '12', 'Monterey' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '740', '12', 'Montana SV6' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '741', '1', 'GT' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '742', '1', 'Freestyle' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '743', '1', 'Five Hundred' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '744', '13', 'LaCrosse' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '745', '13', 'Terraza' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '746', '37', 'Reno' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '747', '24', 'SLR McLaren' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '748', '7', '330' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '749', '6', 'STS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '750', '34', 'Gran Sport' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '751', '34', 'Coupe' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '752', '34', 'GranSport' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '753', '2', '300C' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '754', '19', 'Montego' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '755', '19', 'Mariner' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '756', '5', 'Cobalt' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '757', '5', 'Equinox' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '758', '5', 'Uplander' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '759', '40', 'LR3' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '760', '64', 'C8' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '761', '61', '57S' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '762', '35', '9-7X' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '763', '35', '9-2X' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '764', '21', 'Magnum' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '765', '65', 'DB9' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '766', '65', 'Vanquish S' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '767', '66', 'Arnage' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '768', '66', 'Continental' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '769', '48', 'Tucson' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '770', '26', 'Armada' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '771', '67', 'Esperante' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '772', '68', 'Phantom' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '773', '53', 'Relay' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '774', '54', 'V50' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '775', '47', 'Sierra Denali' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '776', '47', 'Sierra 3500HD' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '777', '47', 'Sierra 2500HD' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '778', '47', 'Yukon XL' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '779', '47', 'Savana Cargo Van' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '780', '47', 'Sierra Hybrid' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '781', '47', 'Savana' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '782', '29', 'Mazda6 5-Door' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '783', '29', 'Mazda5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '784', '29', 'Mazda6 Sport' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '785', '29', 'Mazdaspeed6' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '786', '66', 'Azure' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '787', '66', 'Continental GT' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '788', '66', 'Continental Flying Spur' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '789', '7', '550' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '790', '7', '650' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '791', '7', '750' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '792', '7', 'M6' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '793', '7', 'M Roadster' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '794', '7', 'Z4 M' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '795', '24', 'CLS-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '796', '24', 'G55 AMG' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '797', '24', 'SL65 AMG' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '798', '24', 'R-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '799', '48', 'Azera' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '800', '6', 'DTS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '801', '6', 'XLR-V' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '802', '6', 'CTS-V' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '803', '6', 'STS-V' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '804', '52', 'Commander' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '805', '27', 'Ridgeline' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '806', '37', 'XL7' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '807', '13', 'Lucerne' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '808', '16', 'Rabbit' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '809', '56', 'Spectra5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '810', '12', 'Torrent' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '811', '12', 'Solstice' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '812', '30', 'Raider' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '813', '51', 'XK' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '814', '51', 'XJ' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '815', '23', 'Yaris' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '816', '23', 'Camry Solara' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '817', '31', 'Tribeca' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '818', '31', 'B9 Tribeca' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '819', '5', 'Suburban' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '820', '5', 'Silverado 3500HD' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '821', '5', 'HHR Panel' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '822', '5', 'Malibu Maxx' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '823', '5', 'HHR' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '824', '5', 'Silverado Hybrid' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '825', '5', 'Express' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '826', '1', 'F-250 Super Duty' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '827', '1', 'F-350 Super Duty' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '828', '1', 'E-350 Super Duty' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '829', '1', 'E-350 Super Duty Van' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '830', '1', 'Fusion' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '831', '36', 'A3' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '832', '40', 'Range Rover Sport' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '833', '42', 'RX Hybrid' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '834', '22', 'Cayman' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '835', '19', 'Milan' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '836', '55', 'H2 SUT' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '837', '55', 'H2 SUV' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '838', '55', 'H3' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '839', '26', '350Z Roadster' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '840', '2', 'Crossfire Roadster' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '841', '33', 'Zephyr' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '842', '33', 'Mark LT' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '843', '21', 'Sprinter' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '844', '65', 'DB9 Volante' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '845', '65', 'V8 Vantage' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '846', '65', 'Vantage' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '847', '62', 'C8 Double 12 S' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '848', '69', 'F430' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '849', '69', '612 Scaglietti' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '850', '69', 'F430 Spider' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '851', '70', 'Aero 8' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '852', '71', '207' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '853', '50', 'i-Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '854', '50', 'i-280' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '855', '50', 'i-350' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '856', '5', 'Cobalt SS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '857', '16', 'Eos' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '858', '1', 'F-Series Super Duty' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '859', '1', 'GT500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '860', '1', 'Edge' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '861', '1', 'Expedition EL' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '862', '24', 'GL-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '863', '7', 'Alpina B7' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '864', '21', 'Nitro' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '865', '21', 'Caliber' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '866', '56', 'Carens' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '867', '56', 'Rondo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '868', '23', 'Highlander Hybrid' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '869', '23', 'Camry Hybrid' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '870', '23', 'FJ Cruiser' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '871', '23', 'TundraMax' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '872', '29', 'CX-7' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '873', '29', 'Mazdaspeed 3' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '874', '29', 'CX-9' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '875', '36', 'Q7' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '876', '36', 'RS4' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '877', '36', 'RS 4' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '878', '52', 'Compass' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '879', '52', 'Patriot' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '880', '50', 'i-290' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '881', '50', 'i-370' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '882', '48', 'Veracruz' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '883', '48', 'Entourage' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '884', '72', 'Hemisfear' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '885', '49', 'QX56' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '886', '27', 'Fit' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '887', '26', 'Versa' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '888', '47', 'Acadia' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '889', '47', 'Sierra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '890', '37', 'SX4' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '891', '69', '599 GTB Fiorano' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '892', '33', 'MKX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '893', '33', 'MKZ' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '894', '33', 'Navigator L' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '895', '53', 'Outlook' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '896', '53', 'Aura' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '897', '53', 'Sky' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '898', '12', 'G5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '899', '66', 'Continental GTC' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '900', '41', 'RDX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '901', '2', 'Aspen' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '902', '54', 'C30' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '903', '7', '1 Series' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '904', '7', 'X6' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '905', '36', 'S5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '906', '36', 'R8' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '907', '36', 'A5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '908', '1', 'Taurus X' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '909', '1', 'F450' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '910', '16', 'GLI' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '911', '16', 'Touareg 2' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '912', '40', 'LR2' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '913', '42', 'IS-F' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '914', '42', 'IS F' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '915', '38', 'Reventón' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '916', '38', 'Murciélago LP640' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '917', '26', 'Rogue' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '918', '49', 'G37' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '919', '49', 'EX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '920', '21', 'Challenger' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '921', '65', 'DBS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '922', '56', 'Rio5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '923', '53', 'Astra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '924', '12', 'G8' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '925', '69', '430 Scuderia' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '926', '60', 'Clubman' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '927', '60', 'Cooper Clubman' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '928', '13', 'Enclave' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '929', '73', 'Typ-1' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '930', '34', 'GranTurismo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '931', '74', 'Fortwo' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '932', '63', 'xD' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '933', '24', 'SLK55 AMG' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '934', '24', 'CL65 AMG' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '935', '36', 'Q5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '936', '48', 'Genesis' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '937', '55', 'H3T' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '938', '7', 'Z4 M Roadster' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '939', '5', 'Traverse' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '940', '16', 'CC' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '941', '16', 'Tiguan' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '942', '16', 'Routan' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '943', '56', 'Mohave/Borrego' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '944', '56', 'Borrego' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '945', '54', 'XC60' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '946', '23', 'Venza' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '947', '12', 'G3' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '948', '69', 'California' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '949', '61', 'Landaulet' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '950', '21', 'Journey' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '951', '26', 'Cube' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '952', '26', 'GT-R' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '953', '26', '370Z' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '954', '1', 'Flex' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '955', '66', 'Brooklands' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '956', '37', 'Equator' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '957', '30', 'Tundra' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '958', '33', 'MKS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '959', '51', 'XF' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '960', '73', '2e' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '961', '75', 'Veyron' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '962', '7', 'X5 M' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '963', '7', 'X6 M' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '964', '27', 'Accord Crosstour' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '965', '24', 'Sprinter' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '966', '24', 'GLK-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '967', '65', 'Rapide' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '968', '48', 'Genesis Coupe' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '969', '22', 'Panamera' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '970', '40', 'LR4' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '971', '56', 'Soul' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '972', '56', 'Forte' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '973', '31', 'Impreza WRX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '974', '33', 'MKT' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '975', '68', 'Ghost' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '976', '1', 'Transit Connect' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '977', '42', 'LS Hybrid' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '978', '42', 'HS' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '979', '69', '458 Italia' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '980', '32', 'Evora' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '981', '47', 'Terrain' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '982', '66', 'Continental Super' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '983', '66', 'Azure T' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '984', '37', 'Kizashi' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '985', '41', 'ZDX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '987', '73', 'Type-1h' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '988', '40', 'Defender Ice Edition' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '989', '29', 'Mazda2' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '990', '24', 'SLS AMG' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '991', '24', 'SLS-Class' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '992', '24', 'Sprinter 2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '993', '24', 'Sprinter 3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '994', '27', 'CR-Z' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '995', '42', 'CT' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '996', '26', 'Leaf' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '997', '26', 'JUKE' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '998', '60', 'Countryman' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '999', '60', 'Cooper Countryman' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1000', '5', 'Volt' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1001', '5', 'Cruze' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1002', '65', 'V8 Vantage S' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1003', '65', 'V12 Vantage' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1004', '65', 'Virage' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1005', '66', 'Mulsanne' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1006', '49', 'G25' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1007', '49', 'IPL G' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1008', '35', '9-4X' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1009', '48', 'Equus' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1010', '30', 'Outlander Sport' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1011', '2', '200' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1012', '77', '1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1013', '77', '2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1014', '77', '3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1015', '77', 'Dakota' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1016', '26', 'NV1500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1017', '26', 'NV2500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1018', '26', 'NV3500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1019', '36', 'A7' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1020', '40', 'Range Rover Evoque' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1021', '27', 'FCX Clarity' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1022', '27', 'Crosstour' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1023', '48', 'HED-5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1024', '48', 'Veloster' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1025', '5', 'Sonic' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1026', '23', 'Prius v' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1027', '23', 'Prius Plug-in Hybrid' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1028', '23', 'Prius c' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1029', '23', 'Prius Plug-in' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1030', '42', 'LFA' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1031', '78', '500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1032', '78', 'Nuova 500' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1033', '69', 'FF' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1034', '38', 'Aventador' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1036', '13', 'Verano' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1037', '30', 'i-MiEV' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1038', '63', 'iQ' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1039', '79', 'MP4-12C' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1040', '77', 'C/V' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1041', '1', 'C-MAX Hybrid' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1042', '1', 'Focus ST' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1043', '49', 'JX' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1044', '29', 'CX-5' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1045', '63', 'FR-S' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1046', '31', 'BRZ' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1048', '81', 'Roadster' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1049', '82', '21077' );
INSERT INTO `cars_model`(`id`,`mark_id`,`model`) VALUES ( '1050', '83', '939' );
-- ---------------------------------------------------------


-- Dump data of "ci_session" -------------------------------
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '0576fbfc252d3f8b2b0e1e828a81229f0c3870da', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '066f3d79306b8a53d72db73b13863b6204cec0c1', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '0dfc904d9362dff3cb65f241aa6dc446700a8dba', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '18506948741f5a2f53fb0cd94e4cbbdd81b39007', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '1ab2af4d8188da7c1a434e74413cefefda9cdf10', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '1e2d6fff24f69d0567e7d0f7c21ffea594f0cb05', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '1f488930402e8c2fbb73a19ee16d07b466709ec5', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '22efca6b7239806e9dc97262c1d0f0c0111e7905', '127.0.0.1', '1', '1', '72' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '2a58eead6bbd5a658931f9af0116330f54bd9247', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '2ace6152f39731e0353c86d7653823a2652945f2', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '39851c34468a4b66db7c068355aa09375bb34be2', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '39e472bfbc830e824e126cb9158a838378841a63', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '3adac0081a73ced4408f166fd9e3f2648127d34a', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '3f2b189e6af81decd7b4bfd3474885180992603d', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '3f4fc6d0686fd765bd530488bc79519338574ed9', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '406078755c5981301754a2755dd87fb2debeac4f', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '4083f5c5b801c15b04e4dc185ff584394e1c5e55', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '48425258e5b26c022bc74623913ef2c5c3e20152', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '4b6c0677ad64ce3638c6481c1e87df884fb1c7c4', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '53400d7baddd15f08faf2c39696d3406c98a9f99', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '603675e4d1ba55c007b2c143c5f559990cd41eed', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '609a938be44be8b313a399886a96eaf835382f54', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '6362571ab28ec5639b332f51d3f05dd14d0e4559', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '6a92b669a940137437dd949399bd6da0e3ada0f3', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '6c5910d01fce5c2f78f10bce383160c1f32853b6', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '7b96651d895bfc812956077e1e48b1a7212bc4b5', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '835850ec6cd7f1e28dffbbb462f455a9bf0a59a4', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '85560f1b51a4acbadce65682152f404fef631b13', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '8ac26e3de661cccef2a22cca9b0972e6516ebadd', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '8d8861d70c6744d36a6621f67308a6d83f4a8f87', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '938c6bbaf2e5f55f26cb3964db02bc97af2cff0f', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '93e277d94201edfef0a2a319bf2d7f3c23e519cc', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( '9b955c791350d11df5a0ac41e2b7db8ae5d15495', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( 'a3150ea447b3047b54003f7f58e73e8ed64e7785', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( 'a802612122bd8d6a0a79f2d72de00a4a2840f8c6', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( 'b97b2908d2de2def9df21f90d70f203af296e883', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( 'bd0984f947dda3386b6511929efee7a06d0c59a1', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( 'c34ea605b64ce8713124397c5a278fabc970b73d', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( 'c5e6ad882baa38fcc801fd010a2146d06b9e9d23', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( 'd0c8c1558fc8408075f6d9379d20ac792186d0f0', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( 'd2b5cd0fe68f2326d3fee20266e09613be8a723b', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( 'd5a6fe4fee7b3412c6cd4206a9b10c93ce12396b', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( 'd7892a829046a476a18de9fefffb9223267c2c89', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( 'e1200195bbc791831c3264a7a2061700443d9907', '127.0.0.1', '1', '1', '20' );
INSERT INTO `ci_session`(`session_id`,`ip_address`,`user_agent`,`last_activity`,`user_id`) VALUES ( 'e652e504a2202b1710e5452f5a0bdf4fdb81b484', '127.0.0.1', '1', '1', '20' );
-- ---------------------------------------------------------


-- Dump data of "comments" ---------------------------------
INSERT INTO `comments`(`id`,`user_id`,`avto_id`,`comment_created`,`comment_text`,`examples_id`) VALUES ( '1', '20', '7', '2016-02-01 13:06:10', 'Прекрасное СТО!', '0' );
INSERT INTO `comments`(`id`,`user_id`,`avto_id`,`comment_created`,`comment_text`,`examples_id`) VALUES ( '2', '20', '8', '2016-02-01 13:06:12', 'Отличные ребята', '0' );
INSERT INTO `comments`(`id`,`user_id`,`avto_id`,`comment_created`,`comment_text`,`examples_id`) VALUES ( '5', '20', '648', '2016-02-01 13:06:18', 'У меня нет авто', '0' );
-- ---------------------------------------------------------


-- Dump data of "mediafiles" -------------------------------
INSERT INTO `mediafiles`(`id`,`user_id`,`media_link`) VALUES ( '1', '20', 'foto.jpg' );
-- ---------------------------------------------------------


-- Dump data of "order_for_assessment" ---------------------
INSERT INTO `order_for_assessment`(`id`,`user_id`,`avto_id`,`photo_id`,`order_text`,`order_created`) VALUES ( '2', '20', '55', '1', 'fgxrfdxfxfgxfxfg', '2016-02-23 10:17:10' );
INSERT INTO `order_for_assessment`(`id`,`user_id`,`avto_id`,`photo_id`,`order_text`,`order_created`) VALUES ( '3', '20', '55', '1', 'fgxrfdxfxfgxfxfdcgf', '2016-02-23 10:17:22' );
INSERT INTO `order_for_assessment`(`id`,`user_id`,`avto_id`,`photo_id`,`order_text`,`order_created`) VALUES ( '4', '20', '55', '1', 'fgxrfdxfxfgxfvnv m gmgm mbxfdcgf', '2016-02-23 10:17:29' );
-- ---------------------------------------------------------


-- Dump data of "order_in_shop" ----------------------------
-- ---------------------------------------------------------


-- Dump data of "statistics" -------------------------------
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '20', 'skvak', 'Alex', 'Bobov', 'ddt3000@ukr.net', '0991234567', '0000-00-00', 'мужчина', '1', NULL, '2016-01-31 16:46:23', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '26', 'alenija', 'Alena', 'Verzina', 'alenija23@gmail.com', '0967673008', '0000-00-00', 'женщина', NULL, NULL, '2016-01-30 15:26:22', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '36', 'etyrn', 'mdtgyujm', 'vnmg', 'htgdx@db.yh', '7676767676', '2006-06-20', 'женщина', '9', NULL, '2016-02-09 22:58:41', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '37', 'iuhiuh', 'juhiuhiuh', 'iuyuhgy', 'jhbhb@jhb.uy', '0666666666', '0000-00-00', 'мужчина', '5', NULL, '2016-02-11 21:19:28', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '38', 'iuhiujbhui', 'juhiuhiuh', 'iuyuhgy', 'jhbhb@jhb.u', '0666666668', '0000-00-00', 'мужчина', '9', NULL, '2016-02-11 21:22:13', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '39', 'uihijniouhn', 'kjhbkghvgf', 'fgvkhjnl', 'ygfty@tyufvgu.uhg', '0909889898', '0000-00-00', 'женщина', '20', NULL, '2016-02-11 21:45:28', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '40', 'asd', 'asdfg', 'daherth', 'tht@gfrhy.ui', '0991234577', '0000-00-00', 'мужчина', NULL, NULL, '2016-02-18 19:19:10', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '41', 'dfshh', 'rtwhsrh', 'dykudyk', 'wer@sdfs.esrgf', '0876594939', '2008-09-20', 'мужчина', '20', NULL, '2016-02-21 13:33:43', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '42', 'mfa', 'salkdjweih', 'owifhwoierhjc', 'sdfgad45f@ukr.net', '6565656544', '2006-06-20', 'мужчина', NULL, NULL, '2016-02-26 12:02:33', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '43', 'sdfd', 'ewrfwe', 'sdfwe', 'dyte@ert.try', '6554566545', '0000-00-00', 'мужчина', NULL, NULL, '2016-02-29 15:07:55', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '44', 'duke', 'fred', 'kogan', 'duke@ukr.net', '0449998878', '0000-00-00', 'мужчина', NULL, NULL, '2016-02-29 20:21:12', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '45', 'rtedf', 'ert', 'gfhf', 'hjlk@ddgf.ui', '0449998878', '0000-00-00', 'женщина', NULL, NULL, '2016-03-01 09:12:38', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '46', 'ertgef', 'erferf', 'slkdcsckm', 'lk@klfd.fd', '0573920720', '1986-04-19', 'женщина', NULL, NULL, '2016-03-01 11:15:15', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '47', 'jkjkk', 'jkuiuh', 'hjkuio', 'rur@tutyu.yui', '0991234569', '1980-06-25', 'женщина', NULL, NULL, '2016-03-01 13:39:35', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '48', 'login', 'name', 'surname', 'hjfh@iuoy.uy', '0889988999', '2016-02-17', 'мужчина', NULL, NULL, '2016-03-01 13:41:55', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '49', 'qwerty', 'asdfgh', 'qwerfdsa', 'rt45@ert.ytr', '0449998875', '2016-03-01', 'женщина', NULL, NULL, '2016-03-01 13:45:51', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '50', 'mfamfa', 'Alexandr', 'Petrov', 'email@mail.ua', '0557777755', '2016-03-01', 'мужчина', NULL, NULL, '2016-03-01 15:45:32', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '51', 'jkghkhjk', 'gjkljkl', 'hjkhkhkl', 'ryrty@rwr.yuu', '0779988999', '1989-06-14', 'мужчина', NULL, NULL, '2016-03-01 15:49:15', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '52', 'kjljk', 'kjlhj', 'jklhj', 'dfg@dfg.yt', '0667788777', '1999-02-10', 'мужчина', '43', NULL, '2016-03-01 15:57:22', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '53', 'rtyrty', 'tryutyu', 'tyioui', 'za@sd.gthy', '05766688866', '2016-02-29', 'женщина', '327', NULL, '2016-03-01 16:02:07', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '54', 'reggy', 'john', 'erdfsaf', 'dg@dfg.rth', '0889696955', '2000-02-09', 'женщина', '597', NULL, '2016-03-01 16:06:03', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '55', 'tyueh', 'tyh', 'tyht', 'rty@rte.ty', '0988776654', '2016-02-02', 'мужчина', NULL, NULL, '2016-03-01 16:07:27', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '56', 'rtyrtyryutyu', 'rtyrtyrtyw', 'wevdwec', 'dsrtd@ertry.tyh', '0502793045', '2016-03-01', 'мужчина', '577', '2001', '2016-03-04 21:30:42', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '57', 'slfklsfkgj', 'kojeoijf', 'okjoire', 'ldksaf@kjs.sfd', '0453453423', '2016-03-02', 'мужчина', '3', '0', '2016-03-05 10:33:39', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '58', 'wer', 'oioik', 'oioijew', 'lkjdsfj@lkfd.df', '0897986859', '2016-03-08', 'Мужчина', '358', '2002', '2016-03-05 13:05:50', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '59', 'rtyrtyert', 'oiuewrjfcwo', 'oiceoir', 'kjdgh@kjdd.dfo', '0699685849', '2016-02-11', 'Мужчина', '39', '2002', '2016-03-05 13:42:05', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '60', 'poiwrtio', 'oieui', 'oieorui', 'opirtoi@opoit.tr', '7654321234', '2016-03-01', 'Мужчина', '0', '0', '2016-03-05 14:01:33', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '61', 'eryrty', 'tjyut', 'yujyu', 'ghjfgu@yuj.yu', '0998888877', '2016-03-01', 'Мужчина', '0', '0', '2016-03-05 14:02:47', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '62', 'eryrtyty', 'tjyut', 'yujyu', 'ghjfrtygu@yuj.yu', '0998888877', '2016-03-01', 'Мужчина', '0', '0', '2016-03-05 14:07:59', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '63', 'tr54', 'weert', 'ertesrt', 'vdc@try.iuyi', '8098765432', '2016-02-10', 'Мужчина', '0', '0', '2016-03-05 14:12:09', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '64', 'khkyuk', 'wetyt', 'asfertgyy', 'kjliu@uiku.uyi', '0909898988', '2016-02-03', 'Мужчина', '477', '2000', '2016-03-05 14:15:20', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '65', 'tyutuuyii', 'tyjtjyl', 'zxcvxcv', 'zxvs@wre.ukj', '6785674565', '2016-03-01', 'Мужчина', '0', '0', '2016-03-05 14:33:39', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '66', 'tyutyu', 'tyty', 'ytrr55', 'ui@erte.oi', '7654566543', '2016-03-01', 'Женщина', '0', '0', '2016-03-05 14:34:49', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '67', 'xcvbb', 'terfs', 'refsdfw', 'zxcvv@wer.uo', '6544566543', '2016-02-03', 'Мужчина', '577', '2001', '2016-03-05 14:37:18', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '68', 'gdsgergter', 'erfedrfdr', 'erdfdsfer', 'dftdrtr@wtretr.yik', '0788976979', '2016-03-03', 'мужчина', '456', '0', '2016-03-05 14:38:48', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '69', 'eryttryrty', 'ytutu', 'tyutyurt', 'rtytu6@rety.ui', '9877655432', '2016-03-02', 'мужчина', '286', '2001', '2016-03-05 14:41:54', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '70', 'poioijre', 'pokpeoirk', 'opeirkoaik', 'thtyt@etyrty.uy', '0665544555', '2016-01-06', 'мужчина', '359', '2005', '2016-03-05 14:44:44', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '71', 'rtyrtyrt', 'ytutyiu', 'yuiyi', 'tyuty@erte.uiklu', '0889988765', '2016-03-01', 'Мужчина', '288', '2002', '2016-03-05 14:48:29', NULL );
INSERT INTO `users`(`id`,`login`,`name`,`surname`,`email`,`tel`,`birthsday`,`sex`,`avto_id`,`car_year`,`user_created`,`avatar`) VALUES ( '72', 'phpoop', 'phpoop', 'phpoop', 'phpoop@phpoop.com', '0959379992', '2009-02-28', 'мужчина', '576', '2006', '2016-03-06 13:52:43', NULL );
-- ---------------------------------------------------------


-- Dump data of "example_works_english" --------------------
INSERT INTO `example_works_english`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '1', 'pdr', '2', '2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consequat mollis diam. Fusce nec tempus ipsum, in mattis neque. Nunc lacinia velit eros, ac interdum ante faucibus ac. Proin ultrices imperdiet diam, vitae tempus nulla fringilla non. Curabitur a odio sed risus vestibulum mattis vel nec sem. Donec nunc elit, consectetur ac dignissim nec, tincidunt et orci. Integer a augue velit. In porta tortor nisl, ac lobortis leo auctor in. Maecenas ullamcorper aliquet risus. Sed eget vehicula magna. Etiam malesuada rutrum est quis laoreet. Curabitur tincidunt dignissim ante, ut euismod nulla ultrices quis. Pellentesque quis leo ac leo pulvinar consequat.

Praesent et ex nisi. Suspendisse vitae massa porta, placerat est ut, blandit ipsum. Pellentesque id interdum orci. Curabitur non risus magna. Quisque ut sem in leo facilisis dictum. Proin in blandit est. Nulla nec sagittis velit, ac laoreet ligula.', 'Vivamus mollis purus ex, eget imperdiet purus congue id' );
INSERT INTO `example_works_english`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '2', 'pol', '2', '2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis quam venenatis, venenatis tellus id, interdum tellus. Morbi posuere, lacus non tristique tristique, ex metus porttitor quam, in fringilla mauris nisl nec ligula. Etiam tristique placerat nisi ut ullamcorper. Quisque ac vehicula tellus, pellentesque lobortis ex. Sed eleifend eu ex id ultricies. Nunc tellus eros, egestas semper est ut, laoreet consequat tortor. Vestibulum porttitor elit et neque semper condimentum. Vivamus convallis justo sed massa pharetra commodo. Proin in mauris justo. Vivamus tempor ac nunc sit amet semper. Quisque porta nisi dui, eget rutrum metus viverra eu. Mauris euismod consectetur sagittis. Quisque ex lacus, finibus sit amet mattis at, elementum non elit. Aenean sagittis neque nec erat blandit, non auctor arcu auctor.

Ut consequat aliquam arcu ultrices lacinia. Sed sed malesuada purus. Praesent tristique magna sit amet imperdiet efficitur. Nunc ut orci porta est venenatis tempus. Aenean in justo ut erat sagittis elementum non nec diam. Maecenas non convallis justo. Phasellus laoreet efficitur lectus, convallis luctus sem sollicitudin tristique.', 'Fusce id nibh vel risus' );
INSERT INTO `example_works_english`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '3', 'brn', '2', '2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dignissim elementum orci quis lacinia. Pellentesque urna magna, ullamcorper sit amet lectus luctus, vehicula volutpat lacus. Aliquam sit amet quam non ipsum maximus fermentum. Sed porttitor auctor lectus egestas lacinia. Sed nec porta nulla. Nulla tincidunt sodales orci, non auctor sem malesuada vel. Proin lobortis quam diam. Pellentesque libero est, aliquam eu accumsan in, pulvinar et velit.', 'Vivamus mollis purus ex, eget imperdiet purus congue id' );
INSERT INTO `example_works_english`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '4', 'chm', '2', '2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer cursus iaculis sem pretium sollicitudin. Quisque gravida condimentum rutrum. Sed condimentum mi elementum tempor dignissim. Aliquam quam ante, sollicitudin sed luctus quis, efficitur et mauris. Ut fringilla neque at magna faucibus interdum. Quisque venenatis erat a luctus eleifend. Ut nunc arcu, interdum a facilisis quis, consectetur non metus. Morbi ultricies erat et neque convallis aliquam. Integer tincidunt blandit magna, sit amet fringilla lectus sollicitudin quis. Maecenas suscipit tempus lacinia. Quisque in purus in felis semper auctor id non elit. Pellentesque consequat facilisis mauris id ultricies. Phasellus lorem orci, lobortis non magna in, laoreet fermentum nibh. Duis sit amet arcu nec mi iaculis tincidunt.', 'Fusce id nibh vel risus' );
INSERT INTO `example_works_english`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '5', 'gls', '2', '2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vitae ultricies enim. Curabitur volutpat, eros et condimentum venenatis, eros risus egestas enim, id suscipit lorem tellus non erat. Fusce commodo dapibus tortor ac hendrerit. Donec volutpat dignissim ipsum sed sodales. Quisque gravida ornare commodo. Maecenas euismod sagittis odio, quis posuere mi condimentum ut. Nam non sem felis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc congue nulla vel mauris ultrices, nec posuere est lobortis. Integer felis lacus, tristique vitae metus in, vestibulum pellentesque est.', 'Vivamus mollis purus ex, eget imperdiet purus congue id' );
INSERT INTO `example_works_english`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '6', 'atk', '2', '2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum molestie arcu, sed rhoncus magna viverra vel. Praesent et rhoncus quam. Nullam sed lacus sed nunc semper suscipit nec rhoncus justo. Suspendisse consectetur lobortis nibh, vel molestie lectus hendrerit ut. Pellentesque in lobortis dolor. Nullam eu molestie metus. Vivamus lectus ex, condimentum ac dui sed, maximus suscipit sapien. Aliquam dolor massa, venenatis sed mauris sit amet, aliquam blandit ipsum. Duis lobortis posuere vulputate.', 'Fusce id nibh vel risus' );
INSERT INTO `example_works_english`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '7', 'pnt', '2', '2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sollicitudin consequat ex, sed dictum nunc cursus at. Integer at diam tempor, vehicula nibh eu, ullamcorper mauris. Sed euismod dolor a nisl ultricies varius. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In lobortis in lectus ac gravida. Aenean eros sem, maximus at dui vitae, vehicula semper ex. Proin porttitor condimentum lacus. Nullam blandit sagittis gravida. Vestibulum quis massa sed ante fermentum pretium eu eget risus. Nullam ornare feugiat sagittis. Ut vitae metus ac erat laoreet semper ut a turpis. Donec dignissim ultricies enim, a mattis arcu mattis non. Nullam faucibus dapibus tellus, sed rutrum odio. Suspendisse vehicula felis auctor, tincidunt metus ac, eleifend tortor.', 'Vivamus mollis purus ex, eget imperdiet purus congue id' );
INSERT INTO `example_works_english`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '8', 'nvi', '2', '2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mollis, elit eget molestie malesuada, nulla odio malesuada ipsum, tincidunt venenatis mauris risus sit amet lorem. Duis finibus pharetra orci, nec vulputate dolor pulvinar ac. Nunc vitae sodales felis, id ullamcorper magna. Nullam in risus vitae augue facilisis eleifend. Sed id nibh fermentum, efficitur massa nec, commodo neque. Nunc suscipit tortor quis nibh vehicula, eu dictum ante lacinia. Proin in sem vestibulum, cursus metus sed, lobortis quam. Aliquam pellentesque, lacus non blandit mattis, est justo efficitur augue, ac pellentesque mi tortor quis quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam tristique, quam quis rutrum imperdiet, sapien mauris aliquam erat, vitae rutrum lacus velit a nisl. Nulla hendrerit facilisis eros. Duis feugiat nisi vitae nisi blandit condimentum eget ac quam. Nunc dapibus fermentum orci id iaculis.

Mauris nec blandit justo, quis auctor nulla. Quisque aliquam risus justo, at sagittis neque feugiat et. Nulla in dui ut massa venenatis dapibus. Proin suscipit dui ut dui eleifend tempus. Proin convallis, urna feugiat pretium efficitur, dolor ex congue arcu, tristique varius diam sapien a tellus. Morbi commodo, orci sit amet condimentum euismod, ipsum nulla vehicula odio, eget viverra nibh magna quis sapien. Suspendisse at consectetur nulla. Fusce nec iaculis velit, ac posuere libero. Etiam vel sem nisi. Quisque vitae dui elementum, sollicitudin lacus quis, sagittis nisl. Donec cursus, nibh ut semper aliquet, nulla sapien tristique massa, sed tincidunt quam risus sed tellus. Sed sagittis, lacus id ultricies lobortis, mauris neque egestas ex, eu vehicula nibh orci a lorem. Nunc consequat viverra est et euismod. Quisque id nisl a orci fringilla venenatis porttitor vitae ante.

In sapien erat, venenatis in urna egestas, rhoncus consectetur massa. Morbi auctor suscipit posuere. Ut maximus, nulla vitae scelerisque suscipit, sem massa porta ex, id accumsan quam diam et dui. Donec mollis velit eu ligula porta molestie. Curabitur ultricies nulla eget semper efficitur. Mauris aliquam, erat tincidunt iaculis pellentesque, risus lacus consectetur ligula, in gravida libero ligula sit amet nibh. Fusce nisi nulla, pretium eu imperdiet quis, consectetur in dui. Quisque vitae neque tempus, feugiat orci non, pulvinar urna. Aliquam erat volutpat. Mauris consectetur, tortor ac commodo pellentesque, quam neque dictum purus, convallis vehicula orci lorem et dolor. Donec dignissim elementum tellus. Vivamus eu varius tellus. In eleifend fringilla sem, in consectetur ligula.', 'Fusce id nibh vel risus' );
INSERT INTO `example_works_english`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '9', 'pdr', '2', '2', 'Sed vulputate, est non scelerisque ultricies, leo mi interdum enim, eget placerat felis nunc eget quam. Nam gravida suscipit leo, eget auctor nibh rutrum ut. Vestibulum vulputate odio et lorem vulputate tristique. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc fermentum imperdiet tortor. Ut porta volutpat risus id egestas. Quisque et nisl id dui elementum interdum. Morbi ac erat vel sem congue hendrerit ac vitae libero. Vivamus gravida ligula id molestie egestas. Sed commodo suscipit sem commodo ultricies. Integer suscipit porta magna, at rutrum tellus. Nulla vel rutrum nisl. Sed ut arcu mauris. Integer eros mi, gravida sed magna nec, condimentum sodales lectus.

Suspendisse condimentum sit amet purus et pellentesque. Maecenas consectetur, est at aliquam varius, dolor lectus dignissim sapien, vel convallis elit justo vel diam. Morbi a rhoncus lorem, sit amet faucibus mi. Curabitur auctor nisl turpis, ut consequat libero interdum eu. Cras arcu odio, tincidunt quis tempus non, tincidunt blandit orci. Fusce dictum gravida massa nec cursus. Vestibulum quis posuere augue, a pretium velit. Sed eget neque nec justo porta ultrices in sed enim.', 'Vivamus mollis purus ex, eget imperdiet purus congue id' );
INSERT INTO `example_works_english`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '10', 'gls', '3', '3', 'In tempus efficitur velit id ultrices. Praesent quis fermentum nibh. Aenean malesuada faucibus tellus, ac maximus erat elementum quis. Donec lacinia, dolor in pharetra suscipit, magna tortor aliquet quam, vel tristique turpis dui eu arcu. Suspendisse lacinia dolor sit amet convallis sagittis. Phasellus posuere metus sed tempor maximus. Etiam sodales luctus ligula eu pharetra. Donec finibus nulla ligula, mattis cursus quam consectetur sit amet.

Sed non condimentum eros. Praesent viverra mi justo, vitae porta quam consequat eu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque iaculis nunc at vulputate molestie. Maecenas consequat erat et turpis interdum, vitae vehicula sem cursus. Pellentesque mattis accumsan ornare. Nulla sed velit dignissim, elementum odio ac, accumsan sem.', 'Fusce id nibh vel risus' );
INSERT INTO `example_works_english`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '11', 'brn', '5', '6', 'Suspendisse at nisi massa. Aliquam erat volutpat. Maecenas a lacus euismod turpis vestibulum ullamcorper. In nec tortor in erat fringilla sollicitudin quis eu metus. Maecenas lacinia luctus mollis. Suspendisse potenti. Vivamus a tincidunt velit. Integer non dui quis orci congue luctus eget at tortor. Nulla iaculis ullamcorper libero vel aliquet. Fusce id nibh vel risus tristique malesuada. Aliquam rutrum mi a lorem tempor imperdiet.

Donec a convallis lacus, eu rutrum ante. Duis in congue metus. Sed felis lacus, viverra vel nibh ut, vulputate varius magna. Vivamus mi velit, facilisis sit amet mi ut, facilisis congue ex. Integer laoreet turpis at pellentesque pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu diam id dui fringilla vehicula vitae nec nisi. Ut interdum nisl fermentum ligula sodales, rhoncus aliquet magna mattis. Vivamus mollis purus ex, eget imperdiet purus congue id. Nullam tristique vulputate nunc, pellentesque fringilla nulla luctus sit amet.', 'Vivamus mollis purus ex, eget imperdiet purus congue id' );
INSERT INTO `example_works_english`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '12', 'nvi', '2', '2', 'Sed vulputate, est non scelerisque ultricies, leo mi interdum enim, eget placerat felis nunc eget quam. Nam gravida suscipit leo, eget auctor nibh rutrum ut. Vestibulum vulputate odio et lorem vulputate tristique. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc fermentum imperdiet tortor. Ut porta volutpat risus id egestas. Quisque et nisl id dui elementum interdum. Morbi ac erat vel sem congue hendrerit ac vitae libero. Vivamus gravida ligula id molestie egestas. Sed commodo suscipit sem commodo ultricies. Integer suscipit porta magna, at rutrum tellus. Nulla vel rutrum nisl. Sed ut arcu mauris. Integer eros mi, gravida sed magna nec, condimentum sodales lectus.

Suspendisse condimentum sit amet purus et pellentesque. Maecenas consectetur, est at aliquam varius, dolor lectus dignissim sapien, vel convallis elit justo vel diam. Morbi a rhoncus lorem, sit amet faucibus mi. Curabitur auctor nisl turpis, ut consequat libero interdum eu. Cras arcu odio, tincidunt quis tempus non, tincidunt blandit orci. Fusce dictum gravida massa nec cursus. Vestibulum quis posuere augue, a pretium velit. Sed eget neque nec justo porta ultrices in sed enim.', 'Fusce id nibh vel risus' );
-- ---------------------------------------------------------


-- Dump data of "example_works_russian" --------------------
INSERT INTO `example_works_russian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '1', 'pdr', '2', '2', 'Сделали на совесть. Очень весело, послал дарье александровне. Свободу пред анной, и раболепность во многих, как после выигрыша. Торжествовало его сидел неведовский делал вид, что. Она знала, что успеху неведовского очень скоро заставившие большинство дворян. Неведовского очень весело, послал дарье александровне телеграмму такого милого. Кругу дворян, но, очевидно, имел успех и степан аркадьич. Что его содействовало: его мнимой гордости руку. Все его богатство и более всего. Дело выборов так хорошо делать это был доволен банка, и презирает. Остроумных и уважение и как видел вронский; для слабость. Как видел вронский; для остроумных. Хозяин губернии, торжественно открывавший выборы, говоривший речь предводителя. Представителя того нового направления, которому должно последовать. Банка, и чтоб это дело выборов. Честное, как деревне и ядовитым лицом. Прекрасное помещение в двадцать человек в этот день у него прозвище. Землевладельца, которые он испытывал приятное чувство торжества за директора банка. Того положения дворянина и более была неудача. Вронского же александровна, получив депешу. Сам, что, если он никак не даст бала с каким молодую. Хорошо делать это был прост и сам сказал. Людям, интересовавшимся ходом выборов так заняло его. Большинство дворян изменить суждение о рубле за столом. Городе, которое уступил ему захотелось скакать самому предводителя. Также рад, что он сам сказал, с отличным обедом перебирались эпизоды.', 'Не к чему придраться' );
INSERT INTO `example_works_russian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '2', 'pol', '2', '2', 'И здесь делали на совесть. Приехал на кити щербацкой, который. Праздновался выигрыш жокея ему было в городе. Имени мужа каждый дворянин, с бокалом обращаясь. Рубле за нового направления, которому было найти представителя того нового. Говоривший речь предводителя и торжествовало его мнимой гордости дело было скучно. Чему нейдущих глупостей, каждый дворянин, с ним вронский сидел. Партии новых деятелей и другие признавали это, что. Заняло его, так заманили его, что, кроме этого. Но, очевидно, имел успех и многие из единомышленных, либеральных, новых деятелей. Видел, и нужно было найти представителя того нового направления, которому должно. Дворянин рассказал, как другой шутливый дворянин рассказал, как он знакомился, делался. Речь предводителя и ядовитым лицом сказал, с каким молодую женщину называют madame. Праздновался выигрыш жокея ему было найти представителя того положения дворянина. Старался mettre а более всего. Тем же удовольствием, с тем же это процветающий банк в конце. Свою неудачу весело провел время обеда, обращаясь к будущему трехлетию. Торжествовало его жена, желающая. Процветающий банк в этот день у него прозвище в кашине. Предводителя, и землевладельца, которые. Стола, по левую руку сидел в торжествовало его жена, желающая. Ему захотелось скакать самому стола, по левую руку сидел. Выборов так заняло его, что, если он был подобран.', 'Не к чему придраться' );
INSERT INTO `example_works_russian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '3', 'brn', '2', '2', 'И здесь тоже делали на совесть. Приехал на кити щербацкой, который. Праздновался выигрыш жокея ему было в городе. Имени мужа каждый дворянин, с бокалом обращаясь. Рубле за нового направления, которому было найти представителя того нового. Говоривший речь предводителя и торжествовало его мнимой гордости дело было скучно. Чему нейдущих глупостей, каждый дворянин, с ним вронский сидел. Партии новых деятелей и другие признавали это, что. Заняло его, так заманили его, что, кроме этого. Но, очевидно, имел успех и многие из единомышленных, либеральных, новых деятелей. Видел, и нужно было найти представителя того нового направления, которому должно. Дворянин рассказал, как другой шутливый дворянин рассказал, как он знакомился, делался. Речь предводителя и ядовитым лицом сказал, с каким молодую женщину называют madame. Праздновался выигрыш жокея ему было найти представителя того положения дворянина. Старался mettre а более всего. Тем же удовольствием, с тем же это процветающий банк в конце. Свою неудачу весело провел время обеда, обращаясь к будущему трехлетию. Торжествовало его жена, желающая. Процветающий банк в этот день у него прозвище в кашине. Предводителя, и землевладельца, которые. Стола, по левую руку сидел в торжествовало его жена, желающая. Ему захотелось скакать самому стола, по левую руку сидел. Выборов так заняло его, что, если он был подобран.', 'Не к чему придраться' );
INSERT INTO `example_works_russian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '4', 'chm', '2', '2', 'Здесь даже старались. Это внегалактические объекты, тогда гипотетические радиозвезды, существование которых. Вне этой полосы и была выдвинута. А разрешающая сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились. Называемых радиозвездах было отдано много и остатками. Низкие температуры, 500к зарегистрированное радиоизлучение можно зарегистрировать, а разрешающая сила. Десятки квадратных минут пылевая межзвездная среда прозрачна, радиоизлучение можно зарегистрировать. Немногочисленных близких, которые случайным образом оказались. Неве­лика, все действующие точечные радиоисточники слились бы каждая из них посылает зарегистрированное. Изучение распределения по небу более многочисленная состоит. Объектов нет, а разрешающая сила радиотелескопов неве­лика, все действующие точечные радиоисточники. Квадратных минут пылевой материи после открытия дискретных источников радиоволнах больше. Сплошной фон излучения меньше толщины галактики, не обнаруживалось странное обстоятельство никакие приметных. Разрешающая сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились. Звездами, так называемых радиозвездах по небу дискретных источников радиоисточники слились бы каждая. Правило, наблюдались интенсивный источники радиоизлучения не показывала никакой связи. Звезд в окнах видимости между облаками пылевой материи. Тогда отсутствие концентрации этих галактик очень много усилий. Слишком слабым, останется неуловимым радиозвезды существование. Связи с эти­ми источниками радиоизлучения показало, что дискретными источниками. Прозрачна, радиоизлучение доходит беспрепятственно то, поскольку слабых галактик. Достаточной близости радиозвезд было отдано. Материи после вспышек новых и оптически. Возникла проблема отождествления галактических источников радиоизлучения второй группы могли бы при сопоставлении.', 'Не к чему придраться' );
INSERT INTO `example_works_russian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '5', 'gls', '2', '2', 'Здесь ещё и устали. Узкой полосе около галактического экватора и. Слишком слабым, останется неуловимым этом случае поглощение света очень близкие. Звезды, расстояния которых регистрировалось радиоизлучение, как звезды, расстояния которых регистрировалось радиоизлучение. Лишь тех объектов были известны только. В окнах видимости между облаками пылевой материи после вспышек новых. Выводу о так называемых радиозвездах радиоволн же группа, более или менее равномерно. После открытия дискретных источников радиоизлучения определяется с высокими температурами. Оставалось предположение, что они делятся на больших расстояниях от. Источников, располагающихся вне этой полосе показывает. Света очень много, и нельзя. Же группа, более или менее равномерно, без признаков концентраций. Оптически наблюдать объекты обнаруживают концентрацию к ее плоскости галактики тоже будет понятно. Надеяться на небе близко друг к пылевая межзвездная среда прозрачна, радиоизлучение можно. Разрабатывались методы определения их расстояний и других характеристик полосы и на. Предполагалось, что большинство из источников, располагающихся вне этой площадке ярких галактик явля­лась. Внегалактических объектов были известны только. Могли бы быть очень много и нельзя решить. Указывали выше, динамическими соображениями от нас достаточно сильное перспективе можно надеяться. Будет понятно распределения по всему небу более многочисленная состоит. Сильную концентрацию к галактическому экватору разрабатывались методы определения. Источников к ее плоскости галактики тоже будет все-таки слишком слабым. Оказались в астрономии создалось несколько странное.', 'Не к чему придраться' );
INSERT INTO `example_works_russian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '6', 'atk', '2', '2', 'На день работы. Тем, что большинство галактических дискретных источников радиоизлучения первой. Регистрировалось радиоизлучение, как правило, наблюдались лишь слабые галактики тоже. Оптически яркие объекты, тогда гипотетические радиозвезды. Первые годы после вспышек новых. Случайным образом оказались в тех площадках, в первые. Оптически яркие объекты, например звезды первой звездной величины, никак не об­наруживают. Первые годы после открытия дискретных источников в астрономии создалось несколько странное обстоятельство. Оптическое излучение будет понятно эти­ми источниками радиоизлучения. Объекты, например звезды первой труппы, как и в радиоволнах, больше, чем. Кроме немногочисленных близких, которые случайным образом оказались в состав. Температурами, а доля оптического излучения меньше толщины галактики, не показывала. Намного меньше толщины галактики, так как звезды имеющие. Внегалактических объектов нет, а доля оптического. Оптический объект нужно искать в перспективе. Выше, динамическими соображениями этой полосы. И других характеристик галактического экватора и других характеристик никакой. Газовой материи после открытия дискретных источников радиоизлучения. Объект нужно искать в радиоизлучений отождествления оптических объектов были бы быть очень. Выводу о тщетности попыток отождествления и нельзя решить, какой именно. Второй группы могли бы при сопоставлении галактик явля­лась источником радиоизлучения. Галактики тоже будет понятно выдвинута гипотеза. Разрабатывались методы определения их расстояний и радиообъектов. Динамическими соображениями гипотеза о тщетности попыток отождествления оптических объектов. Доля оптического излучения меньше толщины галактики, так называемых.', 'Не к чему придраться' );
INSERT INTO `example_works_russian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '7', 'pnt', '2', '2', 'На неделю. Другой стороны, оптически наблюдать объекты обнаруживают. Признаков концентраций к плоскости галактики тоже будет все-таки слишком слабым останется. Больших расстояниях от нас низкой точностью и распределенных. Это внегалактические объекты, например звезды первой звездной величины, никак. Называемых радиозвездах нет, а оптическое излучение будет. Радиоизлучение, как мы указывали выше, динамическими соображениями какой именно. Туманностями и других характеристик по небу более многочисленная. Определения их радиоизлучение которого достаточно сильное бы каждая из них расположена. Излучение будет понятно лишь тех объектов кроме немногочисленных близких которые. Наблюдениях в узкой полосе показывает сильную концентрацию к плоскости галактики. Без признаков концентраций к десятки квадратных минут. Располагающихся вне этой полосе около. Узкой полосе показывает сильную концентрацию к посылает зарегистрированное радиоизлучение которого достаточно сильное. Соответствующий источнику радиоизлучения ожидает участь неотождествимости только принадлежащие первой звездной. У таких звезд с эти­ми. Некоторые астрономы пришли к плоскости галактики. Квадратных минут галактическому экватору годы после вспышек. Вспышек новых и распределенных по всему небу дискретных источников межзвездная среда прозрачна. Существование которых намного меньше толщины галактики, так называемых радиозвездах расстояния которых регистрировалось. Группы могли бы тогда гипотетические радиозвезды, существование которых регистрировалось. Лишь слабые галактики тоже будет все-таки слишком слабым. Немногочисленных близких, которые случайным образом оказались. Их расстояний и следовало ожидать, являются очень много, и других характеристик.', 'Не к чему придраться' );
INSERT INTO `example_works_russian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '8', 'nvi', '2', '2', 'Еще один пример. Вина доля оптического излучения меньше толщины галактики, не об­наруживают галактической концентрации. Слишком слабым, останется неуловимым астрономы пришли. Даже в узкой полосе показывает сильную концентрацию. Имеющие низкие температуры, 500к выше, динамическими соображениями экватора и в целой площадке. Часть ярких галактик очень близкими звездами, так как правило, в тех местах. Попыток отождествления галактических дискретных источников радиоизлучения не обнаруживалось странное обстоятельство. Окнах видимости между облаками пылевой материи после открытия дискретных. Но при сопоставлении галактик явля­лась источником радиоизлучения. Перспективе можно надеяться на отождествление лишь слабые галактики тоже будет все-таки. Например звезды первой звездной величины, никак не об­наруживают галактической. Площадке, содержащей десятки квадратных минут создалось несколько. Вызывалась тем, что они делятся. Фон излучения меньше толщины галактики, не обнаруживалось. То, поскольку слабых объектов очень близкие звезды. Слабые галактики тоже будет понятно если бы тогда гипотетические. Были известны только галактики тоже будет понятно большая часть ярких оптических объектов. Так как правило, в астрономии создалось несколько странное положение. Галактической концентрации этих источников радиоизлучения второй группы могли. Которого достаточно сильное несколько странное положение источника. Зарегистрированное радиоизлучение доходит беспрепятственно состав галактики, так называемых радиозвездах величины никак. Этой полосы и остатками газовой. Близко друг к выводу о тщетности попыток отождествления. Более или менее равномерно, без признаков. Никакие приметных оптических объектов были бы тогда отсутствие концентрации этих источников.', 'OK' );
INSERT INTO `example_works_russian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '9', 'pdr', '2', '2', 'Маленькая проблемка была. Межзвездная среда прозрачна, радиоизлучение которого достаточно сильное оказались. Других характеристик бы быть очень. Источниками радиоизлучения показало, что они расположены. Вызывалась тем, что это были известны только галактики. Радиотелескопов неве­лика, все действующие точечные радиоисточники слились бы быть очень велико. Слабые галактики тоже будет понятно с высокими температурами. Толщины галактики, не об­наруживают галактической концентрации этих галактик с эти­ми источниками радиоизлучения. Объекты, тогда гипотетические радиозвезды, существование которых. Галактического экватора и остатками газовой материи после вспышек новых. У звезд в состав галактики. Правило, наблюдались лишь солнце, радиоизлучение можно зарегистрировать, а доля излучения. Ее плоскости галактики и в радиоволнах. Было отдано много и они расположены на больших расстояниях. Равномерно, без признаков концентраций к более или менее. Солнце, радиоизлучение доходит беспрепятственно внегалактические. Например звезды первой звездной величины, никак не показывала никакой связи. Первые годы после открытия дискретных источников каждая. Которые случайным образом оказались в астрономии. Другу, а слабых галактик с высокими температурами, а разрешающая сила радиотелескопов неве­лика. Некоторые астрономы пришли к всему. Внегалактические объекты, например звезды первой. Концентраций к динамическими соображениями достаточно сильное отдано много усилий странное обстоятельство. Содержащей десятки квадратных минут близких, которые случайным образом оказались в узкой. Была выдвинута гипотеза о так называемых.Некоторые из концентрации этих источников радиоизлучения. Некоторые из концентрации этих источников радиоизлучения.', 'Все исправили' );
INSERT INTO `example_works_russian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '10', 'gls', '3', '3', 'пввапфврп', 'вяфв' );
INSERT INTO `example_works_russian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '11', 'brn', '5', '6', 'вапявп', 'апр' );
INSERT INTO `example_works_russian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '12', 'nvi', '2', '2', 'Шумо- и виброизоляция авто. Здесь даже старались. Это внегалактические объекты, тогда гипотетические радиозвезды, существование которых. Вне этой полосы и была выдвинута. А разрешающая сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились. Называемых радиозвездах было отдано много и остатками. Низкие температуры, 500к зарегистрированное радиоизлучение можно зарегистрировать, а разрешающая сила. Десятки квадратных минут пылевая межзвездная среда прозрачна, радиоизлучение можно зарегистрировать. Немногочисленных близких, которые случайным образом оказались. Неве­лика, все действующие точечные радиоисточники слились бы каждая из них посылает зарегистрированное. Изучение распределения по небу более многочисленная состоит. Объектов нет, а разрешающая сила радиотелескопов неве­лика, все действующие точечные радиоисточники. Квадратных минут пылевой материи после открытия дискретных источников радиоволнах больше. Сплошной фон излучения меньше толщины галактики, не обнаруживалось странное обстоятельство никакие приметных. Разрешающая сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились. Звездами, так называемых радиозвездах по небу дискретных источников радиоисточники слились бы каждая. Правило, наблюдались интенсивный источники радиоизлучения не показывала никакой связи. Звезд в окнах видимости между облаками пылевой материи. Тогда отсутствие концентрации этих галактик очень много усилий. Слишком слабым, останется неуловимым радиозвезды существование. Связи с эти­ми источниками радиоизлучения показало, что дискретными источниками. Прозрачна, радиоизлучение доходит беспрепятственно то, поскольку слабых галактик. Достаточной близости радиозвезд было отдано. Материи после вспышек новых и оптически. Возникла проблема отождествления галактических источников радиоизлучения второй группы могли бы при сопоставлении.', 'Не к чему придраться' );
-- ---------------------------------------------------------


-- Dump data of "example_works_ukrainian" ------------------
INSERT INTO `example_works_ukrainian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '1', 'pdr', '2', '2', 'На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело. Lorem Ipsum походить з розділів 1.10.32 та 1.10.33 цицеронівського "de Finibus Bonorum et Malorum" ("Про межі добра і зла"), написаного у 45 році до н.е. Цей трактат з теорії етики був дуже популярним в епоху Відродження. Перший рядок Lorem Ipsum, "Lorem ipsum dolor sit amet..." походить з одного з рядків розділу 1.10.32.', 'Lorem Ipsum є, фактично, стандартною "рибою" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів' );
INSERT INTO `example_works_ukrainian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '2', 'pol', '2', '2', 'Існує багато варіацій уривків з Lorem Ipsum, але більшість з них зазнала певних змін на кшталт жартівливих вставок або змішування слів, які навіть не виглядають правдоподібно. Якщо ви збираєтесь використовувати Lorem Ipsum, ви маєте упевнитись в тому, що всередині тексту не приховано нічого, що могло б викликати у читача конфуз. Більшість відомих генераторів Lorem Ipsum в Мережі генерують текст шляхом повторення наперед заданих послідовностей Lorem Ipsum. Принципова відмінність цього генератора робить його першим справжнім генератором Lorem Ipsum. Він використовує словник з більш як 200 слів латини та цілий набір моделей речень - це дозволяє генерувати Lorem Ipsum, який виглядає осмислено. Таким чином, згенерований Lorem Ipsum не міститиме повторів, жартів, нехарактерних для латини слів і т.ін.', 'Lorem Ipsum є, фактично, стандартною "рибою" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів' );
INSERT INTO `example_works_ukrainian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '3', 'brn', '2', '2', 'На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело. Lorem Ipsum походить з розділів 1.10.32 та 1.10.33 цицеронівського "de Finibus Bonorum et Malorum" ("Про межі добра і зла"), написаного у 45 році до н.е. Цей трактат з теорії етики був дуже популярним в епоху Відродження. Перший рядок Lorem Ipsum, "Lorem ipsum dolor sit amet..." походить з одного з рядків розділу 1.10.32.', 'Lorem Ipsum є, фактично, стандартною "рибою" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів' );
INSERT INTO `example_works_ukrainian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '4', 'chm', '2', '2', 'Вже давно відомо, що читабельний зміст буде заважати зосередитись людині, яка оцінює композицію сторінки. Сенс використання Lorem Ipsum полягає в тому, що цей текст має більш-менш нормальне розподілення літер на відміну від, наприклад, "Тут іде текст. Тут іде текст." Це робить текст схожим на оповідний. Багато програм верстування та веб-дизайну використовують Lorem Ipsum як зразок і пошук за терміном "lorem ipsum" відкриє багато веб-сайтів, які знаходяться ще в зародковому стані. Різні версії Lorem Ipsum з\'явились за минулі роки, деякі випадково, деякі було створено зумисно (зокрема, жартівливі).', 'Lorem Ipsum є, фактично, стандартною "рибою" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів' );
INSERT INTO `example_works_ukrainian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '5', 'gls', '2', '2', 'Існує багато варіацій уривків з Lorem Ipsum, але більшість з них зазнала певних змін на кшталт жартівливих вставок або змішування слів, які навіть не виглядають правдоподібно. Якщо ви збираєтесь використовувати Lorem Ipsum, ви маєте упевнитись в тому, що всередині тексту не приховано нічого, що могло б викликати у читача конфуз. Більшість відомих генераторів Lorem Ipsum в Мережі генерують текст шляхом повторення наперед заданих послідовностей Lorem Ipsum. Принципова відмінність цього генератора робить його першим справжнім генератором Lorem Ipsum. Він використовує словник з більш як 200 слів латини та цілий набір моделей речень - це дозволяє генерувати Lorem Ipsum, який виглядає осмислено. Таким чином, згенерований Lorem Ipsum не міститиме повторів, жартів, нехарактерних для латини слів і т.ін.', 'Lorem Ipsum є, фактично, стандартною "рибою" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів' );
INSERT INTO `example_works_ukrainian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '6', 'atk', '2', '2', 'На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело. Lorem Ipsum походить з розділів 1.10.32 та 1.10.33 цицеронівського "de Finibus Bonorum et Malorum" ("Про межі добра і зла"), написаного у 45 році до н.е. Цей трактат з теорії етики був дуже популярним в епоху Відродження. Перший рядок Lorem Ipsum, "Lorem ipsum dolor sit amet..." походить з одного з рядків розділу 1.10.32.', 'Lorem Ipsum є, фактично, стандартною "рибою" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів' );
INSERT INTO `example_works_ukrainian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '7', 'pnt', '2', '2', 'Існує багато варіацій уривків з Lorem Ipsum, але більшість з них зазнала певних змін на кшталт жартівливих вставок або змішування слів, які навіть не виглядають правдоподібно. Якщо ви збираєтесь використовувати Lorem Ipsum, ви маєте упевнитись в тому, що всередині тексту не приховано нічого, що могло б викликати у читача конфуз. Більшість відомих генераторів Lorem Ipsum в Мережі генерують текст шляхом повторення наперед заданих послідовностей Lorem Ipsum. Принципова відмінність цього генератора робить його першим справжнім генератором Lorem Ipsum. Він використовує словник з більш як 200 слів латини та цілий набір моделей речень - це дозволяє генерувати Lorem Ipsum, який виглядає осмислено. Таким чином, згенерований Lorem Ipsum не міститиме повторів, жартів, нехарактерних для латини слів і т.ін.', 'Lorem Ipsum є, фактично, стандартною "рибою" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів' );
INSERT INTO `example_works_ukrainian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '8', 'nvi', '2', '2', 'Вже давно відомо, що читабельний зміст буде заважати зосередитись людині, яка оцінює композицію сторінки. Сенс використання Lorem Ipsum полягає в тому, що цей текст має більш-менш нормальне розподілення літер на відміну від, наприклад, "Тут іде текст. Тут іде текст." Це робить текст схожим на оповідний. Багато програм верстування та веб-дизайну використовують Lorem Ipsum як зразок і пошук за терміном "lorem ipsum" відкриє багато веб-сайтів, які знаходяться ще в зародковому стані. Різні версії Lorem Ipsum з\'явились за минулі роки, деякі випадково, деякі було створено зумисно (зокрема, жартівливі).', 'Lorem Ipsum є, фактично, стандартною "рибою" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів' );
INSERT INTO `example_works_ukrainian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '9', 'pdr', '2', '2', 'На відміну від поширеної думки Lorem Ipsum не є випадковим набором літер. Він походить з уривку класичної латинської літератури 45 року до н.е., тобто має більш як 2000-річну історію. Річард Макклінток, професор латини з коледжу Хемпдін-Сидні, що у Вірджінії, вивчав одне з найменш зрозумілих латинських слів - consectetur - з уривку Lorem Ipsum, і у пошуку цього слова в класичній літературі знайшов безсумнівне джерело. Lorem Ipsum походить з розділів 1.10.32 та 1.10.33 цицеронівського "de Finibus Bonorum et Malorum" ("Про межі добра і зла"), написаного у 45 році до н.е. Цей трактат з теорії етики був дуже популярним в епоху Відродження. Перший рядок Lorem Ipsum, "Lorem ipsum dolor sit amet..." походить з одного з рядків розділу 1.10.32.', 'Lorem Ipsum є, фактично, стандартною "рибою" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів' );
INSERT INTO `example_works_ukrainian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '10', 'gls', '3', '3', 'Вже давно відомо, що читабельний зміст буде заважати зосередитись людині, яка оцінює композицію сторінки. Сенс використання Lorem Ipsum полягає в тому, що цей текст має більш-менш нормальне розподілення літер на відміну від, наприклад, "Тут іде текст. Тут іде текст." Це робить текст схожим на оповідний. Багато програм верстування та веб-дизайну використовують Lorem Ipsum як зразок і пошук за терміном "lorem ipsum" відкриє багато веб-сайтів, які знаходяться ще в зародковому стані. Різні версії Lorem Ipsum з\'явились за минулі роки, деякі випадково, деякі було створено зумисно (зокрема, жартівливі).', 'Lorem Ipsum є, фактично, стандартною "рибою" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів' );
INSERT INTO `example_works_ukrainian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '11', 'brn', '5', '6', 'Існує багато варіацій уривків з Lorem Ipsum, але більшість з них зазнала певних змін на кшталт жартівливих вставок або змішування слів, які навіть не виглядають правдоподібно. Якщо ви збираєтесь використовувати Lorem Ipsum, ви маєте упевнитись в тому, що всередині тексту не приховано нічого, що могло б викликати у читача конфуз. Більшість відомих генераторів Lorem Ipsum в Мережі генерують текст шляхом повторення наперед заданих послідовностей Lorem Ipsum. Принципова відмінність цього генератора робить його першим справжнім генератором Lorem Ipsum. Він використовує словник з більш як 200 слів латини та цілий набір моделей речень - це дозволяє генерувати Lorem Ipsum, який виглядає осмислено. Таким чином, згенерований Lorem Ipsum не міститиме повторів, жартів, нехарактерних для латини слів і т.ін.', 'Lorem Ipsum є, фактично, стандартною "рибою" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів' );
INSERT INTO `example_works_ukrainian`(`id`,`category`,`photo_before`,`photo_after`,`about`,`additionally`) VALUES ( '12', 'nvi', '2', '2', 'Вже давно відомо, що читабельний зміст буде заважати зосередитись людині, яка оцінює композицію сторінки. Сенс використання Lorem Ipsum полягає в тому, що цей текст має більш-менш нормальне розподілення літер на відміну від, наприклад, "Тут іде текст. Тут іде текст." Це робить текст схожим на оповідний. Багато програм верстування та веб-дизайну використовують Lorem Ipsum як зразок і пошук за терміном "lorem ipsum" відкриє багато веб-сайтів, які знаходяться ще в зародковому стані. Різні версії Lorem Ipsum з\'явились за минулі роки, деякі випадково, деякі було створено зумисно (зокрема, жартівливі).', 'Lorem Ipsum є, фактично, стандартною "рибою" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів' );
-- ---------------------------------------------------------


-- CREATE INDEX "lnk_cars_model_cars_mark" -----------------
CREATE INDEX `lnk_cars_model_cars_mark` USING BTREE ON `cars_model`( `mark_id` );
-- ---------------------------------------------------------


-- CREATE TRIGGER "delete_car" -----------------------------

delimiter $$$ 
CREATE DEFINER=`root`@`localhost` trigger delete_car before delete on cars_model
for each row
begin
declare m INT;
select count(mark_id) into m from cars_model where cars_model.mark_id=old.mark_id;
if m = 1 then
delete from cars_mark where cars_mark.id=old.mark_id;
end if;
end;

$$$ 
delimiter ;
-- ---------------------------------------------------------


-- CREATE TRIGGER "delete_user" ----------------------------

delimiter $$$ 
CREATE DEFINER=`root`@`localhost` trigger delete_user after delete on users
for each row
begin
delete from authorization where authorization.user_id=old.id;
end;

$$$ 
delimiter ;
-- ---------------------------------------------------------
