CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE countries (
    country_id SMALLINT(3) AUTO_INCREMENT PRIMARY KEY,
    country_english_name VARCHAR(45) NOT NULL,
    country_alpha_two_code CHAR(2) NOT NULL,
    country_alpha_three_code CHAR(3) NOT NULL,
    country_unm49_code SMALLINT(3) NOT NULL COMMENT 'AKA the United Nation\'s M49 Code',
    country_dash_alpha_two_format CHAR(13) NOT NULL,
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT countries_country_unm49_code_uindex UNIQUE (country_unm49_code)
);

create index idx_country_alpha_three_code
    on countries (country_alpha_three_code);

create index idx_country_alpha_two_code
    on countries (country_alpha_two_code);