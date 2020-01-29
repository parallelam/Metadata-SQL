CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
create table currencies
(
    currency_id              smallint(3) auto_increment
        primary key,
    entity_name              varchar(100)                       not null,
    currency_name            varchar(100)                       null,
    currency_alphabetic_code char(3)                            null,
    currency_numeric_code    smallint(3)                        null,
    currency_minor_unit      smallint(1)                        null,
    createdAt                datetime default CURRENT_TIMESTAMP not null,
    updatedAt                datetime                           null
);

create index idx_currency_alphabetic_code
    on currencies (currency_alphabetic_code);