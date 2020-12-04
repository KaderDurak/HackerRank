CITY names from STATION that do not end with vowels.

SELECT DISTINCT(CITY)
FROM STATION
WHERE  NOT REGEXP_LIKE(City, '[aeiou]$');