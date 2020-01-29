CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE IF NOT EXISTS `tz_zones` (
`tz_zones_id` INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`country_alphatwo_code` CHAR(2) NOT NULL,
`tz_zone_name` VARCHAR(35) NOT NULL,
`createdAt` DATETIME NOT NULL DEFAULT NOW(),
`updatedAt` DATETIME DEFAULT NULL,
`deletedAt` DATETIME DEFAULT NULL,
INDEX `idx_country_alphatwo_code` (`country_alphatwo_code`),
INDEX `idx_tz_zone_name` (`tz_zone_name`)
) COLLATE='utf8_bin' ENGINE=MyISAM;