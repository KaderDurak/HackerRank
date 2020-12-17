/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).
---------

We initialize the variable with 21 and decrease it by 1 for each row. But what if the variable becomes less than 0? The REPEAT function will return null. 
So, for example, we choose a table with 30 rows, the query will output 30 lines, 20 lines as we expect and 10 lines of null. It is better to exclude null lines.
Filter results according to the value of variable number:
*/

SET @number = 21;
SELECT REPEAT('* ', @number := @number - 1) FROM information_schema.tables WHERE @number > 0;

