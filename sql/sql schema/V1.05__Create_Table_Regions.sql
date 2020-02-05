CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE regions (
    region_id SMALLINT(3) AUTO_INCREMENT PRIMARY KEY,
    global_code SMALLINT(1) NOT NULL,
    global_name CHAR(5) NOT NULL,
    region_code SMALLINT(3) NOT NULL,
    region_name VARCHAR(8) NOT NULL,
    subregion_code SMALLINT(3) NOT NULL,
    subregion_name VARCHAR(32) NOT NULL,
    intermediate_region_code SMALLINT(3) NULL,
    intermediate_region_name VARCHAR(30) NULL,
    country_or_area_name VARCHAR(55) NOT NULL,
    un_m49_code SMALLINT(3) NOT NULL,
    iso_alpha_three_code CHAR(3) NULL,
    ldc BIT DEFAULT 0 NULL COMMENT 'Least Developed Countries',
    lldc BIT DEFAULT 0 NULL COMMENT 'Land Locked Developing Country',
    sids BIT DEFAULT 0 NULL COMMENT 'Small Island Developing States',
    dodc ENUM('Developed', 'Developing') NULL COMMENT 'Developed or Developing Country',
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);

create index idx_region_name
    on regions (region_name);

create index idx_subregion_name
    on regions (subregion_name);