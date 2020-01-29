CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE IF NOT EXISTS zip_codes (
    country_alpha_two_code CHAR(2) NOT NULL,
    subdivision_zip_code MEDIUMINT(5) NOT NULL,
    zip_location_name VARCHAR(100) NULL,
    subdivision_name VARCHAR(30) NULL,
    subdivision_code CHAR(2) NOT NULL,
    zip_latitude DECIMAL(10 , 8 ) NOT NULL,
    zip_longitude DECIMAL(10 , 8 ) NOT NULL,
    timezone_gmt_offset INT DEFAULT 0 NULL,
    timezone_is_dst BIT DEFAULT 0 NULL,
    geopoint VARCHAR(30) NULL,
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT zip_codes_subdivision_zip_code_uindex UNIQUE (subdivision_zip_code)
)  COMMENT 'United States Zone Improvement Plan Codes';

create index idx_subdivision_code
    on zip_codes (subdivision_code);

create index idx_country_alpha_two_code
	on zip_codes (country_alpha_two_code);

alter table zip_codes
    add primary key (subdivision_zip_code);