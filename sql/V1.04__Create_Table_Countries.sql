CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE IF NOT EXISTS `countries` (
    `country_id`       int(11) not null auto_increment,
    `country_english_name`     varchar(45) not null,
    `country_alpha_two_code`   varchar(2)  not null,
    `country_alpha_three_code` varchar(3)  not null,
    `country_numeric_code`     int(11)         not null comment 'AKA United Nation''s M49 Code',
    `country_dash_alpha_two_format`  varchar(15) not null,
    `createdAt` DATETIME NOT NULL DEFAULT NOW(),
	`updatedAt` DATETIME DEFAULT NULL,
	`deletedAt` DATETIME DEFAULT NULL,
    constraint id_UNIQUE
        unique (`country_id`),
    constraint numericCode_UNIQUE
        unique (`country_numeric_code`),
	PRIMARY KEY (`country_id`),
    INDEX `idx_country_alpha_two_code` (`country_alpha_two_code`)
);