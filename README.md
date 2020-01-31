# Metadata-SQL

A centralized repository for hosting standardized SQL, SQL Creates, SQL Inserts, SQL Updates and source CSV files, for a Metadata DB, written in a versioned manner for Flyway support.

Currently has:
* Continents
* Regions (UN-M49)
* Countries (ISO-3166-1-Alpha-2, ISO-3166-1-Alpha-3, ISO-3166-1 Numeric Code AKA UN-M49 Code)
* Currencies (ISO-4217)
* Timezones with Zone ID's (IANA-2019)
* Units of Measure and Conversions for Temperature

In Progress:
* states / cities / counties / townships (ISO 3166 subdivisions)

To Do Items:
* zip/postal codes
* languages
* dial codes
* us tax brackets
* units of measure and conversions (mass/weight/speed/time/length/data/etc)
* payment frequency
* calendar information
* anything else that might be thought of as pertinent at any point down the line

## Querying Timezone & Zone IDs

The validity of a time zone depends on time_start field in the database. This is important to get the correct GMT offset especially areas having Daylight Saving Time. The example below showing how to query the time zone information using zone name America/Los_Angeles.

Input query example:
````
SELECT z.country_code, z.zone_name, tz.abbreviation, tz.gmt_offset, tz.dst
FROM `timezone` tz JOIN `zone` z
ON tz.zone_id=z.zone_id
WHERE tz.time_start <= UNIX_TIMESTAMP(UTC_TIMESTAMP()) AND z.zone_name='America/Los_Angeles'
ORDER BY tz.time_start DESC LIMIT 1;
````
Output of above example:
````
"country_code","zone_name","abbreviation","gmt_offset","dst"
"US","America/Los_Angeles","PST","-28800","0"
````

In order to show the local time of a zone, please use the following example query:
````
SELECT FROM_UNIXTIME(UNIX_TIMESTAMP(UTC_TIMESTAMP()) + tz.gmt_offset, '%a, %d %b %Y, %H:%i:%s') AS local_time
FROM `timezone` tz JOIN `zone` z
ON tz.zone_id=z.zone_id
WHERE tz.time_start <= UNIX_TIMESTAMP(UTC_TIMESTAMP()) AND z.zone_name='America/Los_Angeles'
ORDER BY tz.time_start DESC LIMIT 1;
````
Output of above example:
````
"local_time"
"Tue, 28 Jan 2020, 12:34:44"
````


Reference Links for Data Sources:
````
https://www.census.gov/geographies/reference-files.2016.html
http://www.geopostcodes.com/
http://www.geonames.org/data-sources.html
https://unstats.un.org/unsd/methodology/m49/overview
https://www.iso.org/iso-4217-currency-codes.html
https://www.iso.org/iso-3166-country-codes.html
https://datahub.io/core/language-codes
https://www.loc.gov/standards/iso639-2/php/code_list.php
https://datahub.io/core/fips-10-4
````


Informational Reading on Standardization Organizations:
````
https://en.wikipedia.org/wiki/Internet_Engineering_Task_Force
https://en.wikipedia.org/wiki/International_Organization_for_Standardization
https://en.wikipedia.org/wiki/Internet_Assigned_Numbers_Authority
https://en.wikipedia.org/wiki/Federal_Information_Processing_Standards
````


Informational Reading on Specific Standards & Data Aggregates:
````
http://efele.net/maps/fips-10/data/
https://en.wikipedia.org/wiki/ISO_3166
https://en.wikipedia.org/wiki/ISO_3166-1
https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3
https://en.wikipedia.org/wiki/ISO_3166-1_numeric
https://en.wikipedia.org/wiki/ISO_3166-2
https://en.wikipedia.org/wiki/ISO_3166-3
https://en.wikipedia.org/wiki/ISO_639
https://en.wikipedia.org/wiki/ISO_639-1
https://en.wikipedia.org/wiki/ISO_639-2
https://en.wikipedia.org/wiki/ISO_639-3
https://en.wikipedia.org/wiki/ISO_639-5
https://en.wikipedia.org/wiki/ISO_639-6
https://en.wikipedia.org/wiki/ISO_4217
https://en.wikipedia.org/wiki/Tz_database
````
