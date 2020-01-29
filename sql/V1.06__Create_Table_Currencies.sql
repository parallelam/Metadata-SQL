CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE IF NOT EXISTS `currencies` (
    `currency_id`     int auto_increment primary key not null,
    `entity_name`     varchar(100) null,
    `currency_name`   varchar(100) null,
    `currency_alphabetic_code` varchar(4)   null,
    `currency_numeric_code`    int          null,
    `currency_minor_unit`      int          null,
    `createdAt` DATETIME NOT NULL DEFAULT NOW(),
	`updatedAt` DATETIME DEFAULT NULL,
	`deletedAt` DATETIME DEFAULT NULL,
    constraint id_UNIQUE
        unique (`currency_id`),
	INDEX `idx_currency_alphabetic_code` (`currency_alphabetic_code`)
);