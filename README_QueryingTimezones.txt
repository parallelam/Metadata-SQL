Querying Timezone & Zones:


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