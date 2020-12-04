/*CITY names from STATION that do not start with vowels and do not end with vowels.
*/
SELECT DISTINCT City
FROM Station
WHERE REGEXP_LIKE(City, '^[^AEIOU].*[^aeiou]$');