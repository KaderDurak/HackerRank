/*CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters.*/

select distinct city 
from station 
where regexp_like(city, '^[aeiou]+(.)+[aeiou]$', 'i') ;
