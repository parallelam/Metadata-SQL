CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
create table countries
(
    country_id                    smallint(3) auto_increment
        primary key,
    country_english_name          varchar(45)                        not null,
    country_alpha_two_code        char(2)                            not null,
    country_alpha_three_code      char(3)                            not null,
    country_unm49_code            smallint(3)                        not null comment 'AKA the United Nation''s M49 Code',
    country_dash_alpha_two_format char(13)                           not null,
    createdAt                     datetime default CURRENT_TIMESTAMP not null,
    updatedAt                     datetime                           null,
    constraint countries_country_unm49_code_uindex
        unique (country_unm49_code)
);

create index idx_country_alpha_three_code
    on countries (country_alpha_three_code);

create index idx_country_alpha_two_code
    on countries (country_alpha_two_code);