CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE zip_postal_codes (
    entry_id INT AUTO_INCREMENT PRIMARY KEY,
    iso_3166_1_alpha2_code CHAR(2) NOT NULL,
    zip_postal_code VARCHAR(5) NOT NULL,
    location_name VARCHAR(180) NULL,
    admin1_name VARCHAR(100) NULL,
    admin1_code VARCHAR(20) NULL,
    admin2_name VARCHAR(100) NULL,
    admin2_code VARCHAR(20) NULL,
    admin3_name VARCHAR(100) NULL,
    admin3_code VARCHAR(20) NULL,
    latitude FLOAT NULL,
    longitude FLOAT NULL,
    location_accuracy SMALLINT(3) NULL,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

create index idx_iso_3166_1_alpha2_code
    on zip_postal_codes (iso_3166_1_alpha2_code);