CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE tz_zones (
    tz_zone_id SMALLINT(3) AUTO_INCREMENT PRIMARY KEY,
    country_alphatwo_code CHAR(2) NOT NULL,
    tz_zone_name VARCHAR(35) NOT NULL,
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);

create index idx_country_alphatwo_code
    on tz_zones (country_alphatwo_code);

create index idx_tz_zone_name
    on tz_zones (tz_zone_name);