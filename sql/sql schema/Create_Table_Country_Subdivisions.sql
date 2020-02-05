CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE country_subdivisions (
    entry_id INT AUTO_INCREMENT PRIMARY KEY,
    iso3166_1_alpha2 CHAR(2) NOT NULL,
    iso3166_2 VARCHAR(7) NOT NULL,
    subdivision_name VARCHAR(100) NULL,
    subdivision_category VARCHAR(100) NULL,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
)  COMMENT 'This table contains standardized information for country subdivisions.';

create index idx_iso3166_1_alpha2
    on country_subdivisions (iso3166_1_alpha2);