SELECT DISTINCT(CITY)
FROM STATION
WHERE REGEXP_LIKE(City, '[aeiou]$');