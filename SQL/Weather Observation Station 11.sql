CITY names from STATION that either do not start with vowels or do not end with vowels.

select distinct city 
from station 
where  not regexp_like(city, '^[aeiou]+(.)+[aeiou]$', 'i') ;