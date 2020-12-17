/*
Amber’s conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:
hierarchy:
Founder
Lead Manager
Senior Manager
Manager
Employee

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers,
total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.
Note:

The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, 
then the ascending company_codes will be C_1, C_10, and C_2.

Explanation
In company C1, the only lead manager is LM1. There are two senior managers, SM1 and SM2, under LM1. There is one manager, M1, 
under senior manager SM1. There are two employees, E1 and E2, under manager M1.

In company C2, the only lead manager is LM2. There is one senior manager, SM3, under LM2. There are two managers, M2 and M3, 
under senior manager SM3. There is one employee, E3, under manager M2, and another employee, E4, under manager, M3.

Analysis
We can join all tables with company_code, lead_manager_code, senior_manager_code, manager_code and employee_code. 
We can use “SELECT from tb1, tb2, … WHERE” to join tables. And we can use “JOIN … ON …” to join tables one by one as well.
Also,

number of employees and various managers ==> COUNT(…) GROUP BY …
table may contain duplicates ==> COUNT(DISTINCT …) GROUP BY …
order output by ascending company_code ==> ORDER BY c.company_code
*/
SELECT c.company_code, c.founder, 
       COUNT(DISTINCT l.lead_manager_code), COUNT(DISTINCT s.senior_manager_code),
       COUNT(DISTINCT m.manager_code), COUNT(DISTINCT e.employee_code)
FROM Company c JOIN Lead_Manager l ON c.company_code = l.company_code JOIN
     Senior_Manager s ON l.lead_manager_code = s.lead_manager_code JOIN
     Manager m ON s.senior_manager_code = m.senior_manager_code JOIN
     Employee e ON m.manager_code = e.manager_code   
GROUP BY c.company_code, c.founder ORDER BY c.company_code;
