CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE IF NOT EXISTS timezones (
    timezone_id MEDIUMINT(8) AUTO_INCREMENT PRIMARY KEY,
    tz_zone_id SMALLINT(3) NOT NULL,
    timezone_abbreviation VARCHAR(6) NULL,
    timezone_time_start DECIMAL(11) NOT NULL,
    timezone_gmt_offset INT(11) DEFAULT 0,
    timezone_is_dst BIT DEFAULT 0 NULL,
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);

create index idx_timezone_time_start
    on timezones (timezone_time_start);

create index idx_tz_zone_id
    on timezones (tz_zone_id);