CITY names ending with vowels (a, e, i, o, u)

SELECT DISTINCT(CITY)
FROM STATION
WHERE REGEXP_LIKE(City, '[aeiou]$');
