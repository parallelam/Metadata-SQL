CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE IF NOT EXISTS `timezones` (
`id` int(10) auto_increment not null primary key,
`tz_zone_id` INT(10) NOT NULL,
`abbreviation` VARCHAR(6) NOT NULL,
`time_start` DECIMAL(11,0) NOT NULL,
`gmt_offset` INT NOT NULL,
`dst` CHAR(1) NOT NULL,
`createdAt` DATETIME NOT NULL DEFAULT NOW(),
`updatedAt` DATETIME DEFAULT NULL,
`deletedAt` DATETIME DEFAULT NULL,
INDEX `idx_tz_zone_id` (`tz_zone_id`),
INDEX `idx_time_start` (`time_start`)
) COLLATE='utf8_bin' ENGINE=MyISAM;