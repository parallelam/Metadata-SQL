CREATE DATABASE IF NOT EXISTS metadata;
USE metadata;
CREATE TABLE measurement_temperature (
    temperature_id SMALLINT(1) AUTO_INCREMENT PRIMARY KEY,
    temperature_type_name VARCHAR(10) NOT NULL,
    temperature_type_abbreviation CHAR NOT NULL,
    convert_to_fahrenheit VARCHAR(50) NOT NULL,
    convert_to_celsius VARCHAR(50) NOT NULL,
    convert_to_kelvin VARCHAR(50) NOT NULL,
    temperature_to_boil_water VARCHAR(7) NOT NULL,
    temperature_to_freeze_water VARCHAR(8) NOT NULL,
    temperature_for_absolute_zero VARCHAR(9) NOT NULL,
    last_updated DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    CONSTRAINT measurement_temperature_temperature_type_abbreviation_uindex UNIQUE (temperature_type_abbreviation),
    CONSTRAINT measurement_temperature_temperature_type_name_uindex UNIQUE (temperature_type_name)
);