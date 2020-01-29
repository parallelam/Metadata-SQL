CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
create table tz_zones
(
    tz_zone_id            smallint(3) auto_increment
        primary key,
    country_alphatwo_code char(2)                            not null,
    tz_zone_name          varchar(35)                        not null,
    createdAt             datetime default CURRENT_TIMESTAMP not null,
    updatedAt             datetime                           null
);

create index idx_country_alphatwo_code
    on tz_zones (country_alphatwo_code);

create index idx_tz_zone_name
    on tz_zones (tz_zone_name);