CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
create table regions
(
    region_id                smallint(3) auto_increment
        primary key,
    global_code              smallint(1)                        not null,
    global_name              char(5)                            not null,
    region_code              smallint(3)                        not null,
    region_name              varchar(8)                         not null,
    subregion_code           smallint(3)                        not null,
    subregion_name           varchar(32)                        not null,
    intermediate_region_code smallint(3)                        null,
    intermediate_region_name varchar(30)                        null,
    country_or_area_name     varchar(55)                        not null,
    un_m49_code              smallint(3)                        not null,
    iso_alpha_three_code     char(3)                            null,
    ldc                      bit      default b'0'              null comment 'Least Developed Countries',
    lldc                     bit      default b'0'              null comment 'Land Locked Developing Country',
    sids                     bit      default b'0'              null comment 'Small Island Developing States',
    dodc                     enum ('Developed', 'Developing')   null comment 'Developed or Developing Country',
    createdAt                datetime default CURRENT_TIMESTAMP not null,
    updatedAt                datetime                           null
);

create index idx_region_name
    on regions (region_name);

create index idx_subregion_name
    on regions (subregion_name);