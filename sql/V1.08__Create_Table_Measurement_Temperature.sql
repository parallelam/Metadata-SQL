CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE IF NOT EXISTS `measurement_temperature` (
`temperature_id` int(10) auto_increment not null primary key,
`temperature_type_name` varchar(10) not null unique,
`temperature_type_abbreviation` varchar(5) not null unique,
`convert_to_fahrenheit` varchar(50) null,
`convert_to_celsius` varchar(50) null,
`convert_to_kelvin` varchar(50) null,
`temperature_to_boil_water` varchar(25) null,
`temperature_to_freeze_water` varchar(25) null,
`temperature_for_absolute_zero` varchar(25) null,
`createdAt` DATETIME NOT NULL DEFAULT NOW(),
`updatedAt` DATETIME DEFAULT NULL,
`deletedAt` DATETIME DEFAULT NULL
);