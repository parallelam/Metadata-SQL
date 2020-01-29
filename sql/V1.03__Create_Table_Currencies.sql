CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE currencies (
    currency_id SMALLINT(3) AUTO_INCREMENT PRIMARY KEY,
    entity_name VARCHAR(100) NOT NULL,
    currency_name VARCHAR(100) NULL,
    currency_alphabetic_code CHAR(3) NULL,
    currency_numeric_code SMALLINT(3) NULL,
    currency_minor_unit SMALLINT(1) NULL,
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
);

create index idx_currency_alphabetic_code
    on currencies (currency_alphabetic_code);