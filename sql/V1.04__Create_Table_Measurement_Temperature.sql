CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
create table measurement_temperature
(
    temperature_id                smallint(1) auto_increment
        primary key,
    temperature_type_name         varchar(10)                        not null,
    temperature_type_abbreviation char                               not null,
    convert_to_fahrenheit         varchar(50)                        not null,
    convert_to_celsius            varchar(50)                        not null,
    convert_to_kelvin             varchar(50)                        not null,
    temperature_to_boil_water     varchar(7)                         not null,
    temperature_to_freeze_water   varchar(8)                         not null,
    temperature_for_absolute_zero varchar(9)                         not null,
    createdAt                     datetime default CURRENT_TIMESTAMP not null,
    updatedAt                     datetime                           null,
    constraint measurement_temperature_temperature_type_abbreviation_uindex
        unique (temperature_type_abbreviation),
    constraint measurement_temperature_temperature_type_name_uindex
        unique (temperature_type_name)
);