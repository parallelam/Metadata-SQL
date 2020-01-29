CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
create table if not exists timezones
(
    timezone_id           MEDIUMINT(8) auto_increment
        primary key,
    tz_zone_id            smallint(3)                               not null,
    timezone_abbreviation varchar(6)                            null,
    timezone_time_start   decimal(11)                           not null,
    timezone_gmt_offset   int(11) default 0,
    timezone_is_dst       bit         default b'0'              null,
    createdAt             datetime    default CURRENT_TIMESTAMP not null,
    updatedAt             datetime                              null
);

create index idx_timezone_time_start
    on timezones (timezone_time_start);

create index idx_tz_zone_id
    on timezones (tz_zone_id);